GSSE = LibStub("AceAddon-3.0"):NewAddon("GSSE", "AceConsole-3.0")
local AceGUI = LibStub("AceGUI-3.0")

function GSSE:getSequenceNames()
  local keyset={}
  local n=0

  for k,v in pairs(GSMasterSequences) do
    n=n+1
    keyset[k]=k
  end
  return keyset
end


-- Create Dialog

local frame = AceGUI:Create("Frame")
frame:SetTitle("Sequence Editor")
frame:SetStatusText("Gnome Sequencer: Sequence Editor")
frame:SetCallback("OnClose", function(widget) frame:Hide() end)
frame:SetLayout("List")

local names = GSSE:getSequenceNames()
GSNames = names
local listbox = AceGUI:Create("Dropdown")
listbox:SetLabel("Load Sequence")
listbox:SetWidth(250)
listbox:SetList(names)
listbox:SetCallback("OnValueChanged", function (obj,event,key) GSSE:loadSequence(key) end)
--listbox:SetCallback("OnClick", function(obj, event, value) GSSE:loadSequence(value) end)
frame:AddChild(listbox)

local sequencebox = AceGUI:Create("MultiLineEditBox")
sequencebox:SetLabel("Sequence")
sequencebox:SetNumLines(20)
sequencebox:DisableButton(true)
sequencebox:SetFullWidth(true)
frame:AddChild(sequencebox)

local updbutton = AceGUI:Create("Button")
updbutton:SetText("Test")
updbutton:SetWidth(200)
updbutton:SetCallback("OnClick", function() GSSE:updateSequence(sequencebox:GetText()) end)
frame:AddChild(updbutton)


-- Slash Commands

GSSE:RegisterChatCommand("gsse", "GSSlash")

-- Functions


function GSSE:loadSequence(SequenceName)
    sequencebox:SetText(GSExportSequence(SequenceName))
end

function GSSE:updateSequence(sequenceText)
    
    local sequenceIndex = GetMacroIndexByName("LiveTest")
    GSMasterSequences["LiveTest"] = GSSE:lines(sequenceText)
    GSMasterSequences["LiveTest"].author = GetUnitName("player", true) .. '@' .. GetRealmName()
    GSMasterSequences["LiveTest"].specID = GSSE:getSpecID()
    GSMasterSequences["LiveTest"].helpTxt = "Talents: " .. GSSE:getCurrentTalents()
    GSMasterSequences["LiveTest"].icon = GSSE:getMacroIcon(sequenceIndex)
    GSUpdateSequence("LiveTest", GSMasterSequences["LiveTest"])

    loadSequence("LiveTest")
    if sequenceIndex > 0 then
      -- Sequence exists do nothing
    else
      -- Create Sequence as a player sequence
      sequenceid = CreateSequence("LiveTest", icon, '#showtooltip\n/click ' .. "LiveTest", 0)
      ModifiedMacros["LiveTest"] = true
    end
end

function GSSE:GSSlash(input)
    if input == "hide" then
        frame:Hide()
    else
        frame:Show()
    end
end

function GSSE:OnInitialize()
    frame:Hide()
end

function GSSE:getCurrentTalents()
  local talents = ""
  for talentTier = 1, MAX_TALENT_TIERS do
    local available, selected = GetTalentTierInfo(talentTier, 1)
    talents = talents .. (available and selected or "0")
  end
  return talents
end

function GSSE:getSpecID()
    local currentSpec = GetSpecialization()
    return currentSpec and select(1, GetSpecializationInfo(currentSpec)) or "None"
end

function GSSE:getMacroIcon(sequenceIndex)
  if GSSE:isempty(sequenceIndex) then
    local _, _, _, specicon, _, _, _ = GetSpecializationInfoByID(getSpecID())
    return strsub(specicon, 17)  
  else
    local _, iconpath, _ =  GetMacroInfo(sequenceIndex)
    return iconpath
  end
end

function GSSE:isempty(s)
  return s == nil or s == ''
end

function GSSE:lines(str)
  local t = {}
  local function helper(line) table.insert(t, line) return "" end
  helper((str:gsub("(.-)\r?\n", helper)))
  table.sort(t)
  return t
end


