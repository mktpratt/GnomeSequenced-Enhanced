local L = LibStub("AceLocale-3.0"):NewLocale("GS-SE", "enUS", true)

-- Editor DEBUG
L["Selecting tab: "] = true
L["GSTranslateSequenceFromTo(GSMasterOptions.SequenceLibrary["] = true
L["], (GSisEmpty(GSMasterOptions.SequenceLibrary["] = true
L["].lang) and GSMasterOptions.SequenceLibrary["] = true
L["].lang or GetLocale()), key)"] = true
L["GSSE:loadSequence "] = true
L["Moving on - LiveTest.PreMacro already exists."] = true
L["Moving on - LiveTest.PosMacro already exists."] = true
L["String Icon "] = true
L["Spec = "] = true
L["Class = "] = true
L["sequenceIndex: "] = true
L["No value"] = true
L["Icon: "] = true
L["none"] = true
L["Macro Found "] = true
L[" with iconid "] = true
L["of no value"] = true
L["with no body"] = true
L["No Macro Found. Possibly different spec for Sequence "] = true
L["SequenceSpecID: "] = true
L["No Sequence Icon setting to "] = true
L["No value"] = true
L["Setting Editor clean "] = true
L[" not added to list."] = true

--sequence editor stuff
L["Sequence"] = true
L["Edit"] = true
L["New"] = true
L["Choose Language"] = true
L["Translated Sequence"] = true
L["Sequence Viewer"] = true
L["Gnome Sequencer: Sequence Viewer"] = true
L["Load Sequence"] = true
L["Disable Sequence"] = true
L["Enable Sequence"] = true
L["Translate to"] = true
L["Sequence Editor"] = true
L["Gnome Sequencer: Sequence Editor. Press the Close button to Save -->"] = true
L["Sequence Name"] = true
L["Step Function"] = true
L["Sequential (1 2 3 4)"] = true
L["Priority List (1 12 123 1234)"] = true
L["Specialization Specific Macro"] = true
L["Classwide Macro"] = true
L["Macro Icon"] = true
L["PreMacro"] = true
L["PostMacro"] = true
L["Completely New GS Macro."] = true
L["Please wait till you have left combat before using the Sequence Editor."] = true
L["The Sequence Editor is an addon for GnomeSequencer-Enhanced that allows you to view and edit Sequences in game.  Type "] = true
L["/gsse |r to get started."] = true
L["Gnome Sequencer: Sequence Version Manager"] = true
L["Manage Versions"] = true
L["Active Version: "] = true
L["Select Other Version"] = true
L["Make Active"] = true
L["Delete Version"] = true
L["No Sequences present so none displayed in the list."] = true
L["Specialisation / Class ID"] = true
-- options Debug


-- options stuff
L["You need to reload the User Interface to complete this task.  Would you like to do this now?"] = true
L["Yes"] = true
L["No"] = true
L["|cffff0000GS-E:|r Gnome Sequencer - Enhanced Options"] = true
L["General"] = true
L["General Options"] = true
L["Only Save Local Macros"] = true
L["GS-E can save all macros or only those versions that you have created locally.  Turning this off will cache all macros in your WTF\\GS-Core.lua variables file but will increase load times and potentially cause colissions."] = true
L["Use Macro Translator"] = true
L["The Macro Translator will translate an English sequence to your local language for execution.  It can also be used to translate a sequence into a different language.  It is also used for syntax based colour markup of Sequences in the editor."] = true
L["Delete Orphaned Macros on Logout"] = true
L["As GS-E is updated, there may be left over macros that no longer relate to sequences.  This will check for these automatically on logout.  Alternatively this check can be run via /gs cleanorphans"] = true
L["Use Global Account Macros"] = true
L["When creating a macro, if there is not a personal character macro space, create an account wide macro."] = true
L["Set Default Icon QuestionMark"] = true
L["By setting the default Icon for all macros to be the QuestionMark, the macro button on your toolbar will change every key hit."] = true
L["Seed Initial Macro"] = true
L["If you load Gnome Sequencer - Enhanced and the Sequence Editor and want to create new macros from scratch, this will enable a first cut sequenced template that you can load into the editor as a starting point.  This enables a Hello World macro called Draik01.  You will need to do a /console reloadui after this for this to take effect."] = true
L["Gameplay Options"] = true
L["Require Target to use"] = true
L["This option prevents macros firing unless you have a target. Helps reduce mistaken targeting of other mobs/groups when your target dies."] = true
L["Prevent Sound Errors"] = true
L["This option hide error sounds like \"That is out of range\" from being played while you are hitting a GS Macro.  This is the equivalent of /console Sound_EnableErrorSpeech lines within a Sequence.  Turning this on will trigger a Scam warning about running custom scripts."] = true
L["Prevent UI Errors"] = true
L["This option hides text error popups and dialogs and stack traces ingame.  This is the equivalent of /script UIErrorsFrame:Hide() in a PostMacro.  Turning this on will trigger a Scam warning about running custom scripts."] = true
L["Clear Errors"] = true
L["This option clears errors and stack traces ingame.  This is the equivalent of /run UIErrorsFrame:Clear() in a PostMacro.  Turning this on will trigger a Scam warning about running custom scripts."] = true
L["Use First Ring in Postmacro"] = true
L["Incorporate the first ring slot into the PostMacro. This is the equivalent of /use [combat] 11 in a PostMacro."] = true
L["Use Second Ring in Postmacro"] = true
L["Incorporate the second ring slot into the PostMacro. This is the equivalent of /use [combat] 12 in a PostMacro."] = true
L["Use First Trinket in Postmacro"] = true
L["Incorporate the first trinket slot into the PostMacro. This is the equivalent of /use [combat] 13 in a PostMacro."] = true
L["Use Second Trinket in Postmacro"] = true
L["Incorporate the second trinket slot into the PostMacro. This is the equivalent of /use [combat] 14 in a PostMacro."] = true
L["Use Neck Item in Postmacro"] = true
L["Incorporate the neck slot into the PostMacro. This is the equivalent of /use [combat] 2 in a PostMacro."] = true
L["Use Belt Item in Postmacro"] = true
L["Incorporate the belt slot into the PostMacro. This is the equivalent of /use [combat] 5 in a PostMacro."] = true
L["Debug Mode Options"] = true
L["Enable Mod Debug Mode"] = true
L["This option dumps extra trace information to your chat window to help troubleshoot problems with the mod"] = true
L["Display debug messages in Chat Window"] = true
L["This will display debug messages in the Chat window."] = true
L["Store Debug Messages"] = true
L["Store output of debug messages in a Global Variable that can be referrenced by other mods."] = true
L["Debug Sequence Execution"] = true
L["Output the action for each button press to verify StepFunction and spell availability."] = true
L["Colour"] = true
L["Colour and Accessibility Options"] = true
L["Title Colour"] = true
L["Picks a Custom Colour for the Mod Names."] = true
L["Author Colour"] = true
L["Picks a Custom Colour for the Author."] = true
L["Command Colour"] = true
L["Picks a Custom Colour for the Commands."] = true
L["Emphasis Colour"] = true
L["Picks a Custom Colour for emphasis."] = true
L["Normal Colour"] = true
L["Picks a Custom Colour to be used normally."] = true
L["Editor Colours"] = true
L["Spell Colour"] = true
L["Picks a Custom Colour to be used for Spells and Abilities."] = true
L["Unknown Colour"] = true
L["Picks a Custom Colour to be used for unknown terms."] = true
L["Icon Colour"] = true
L["Picks a Custom Colour to be used for Icons."] = true
L["SpecID/ClassID Colour"] = true
L["Picks a Custom Colour to be used for numbers."] = true
L["String Colour"] = true
L["Picks a Custom Colour to be used for strings."] = true
L["Conditionals Colour"] = true
L["Picks a Custom Colour to be used for macro conditionals eg [mod:shift]"] = true
L["Help Colour"] = true
L["Picks a Custom Colour to be used for braces and indents."] = true
L["Step Functions"] = true
L["Picks a Custom Colour to be used for StepFunctions."] = true
L["Language Colour"] = true
L["Picks a Custom Colour to be used for language descriptors"] = true
L["Blizzard Functions Colour"] = true
L["Picks a Custom Colour to be used for Macro Keywords like /cast and /target"] = true
L["Plugins"] = true
L["GS-E Plugins"] = true
L["Registered Addons"] = true
L["Available Addons"] = true
L[":|r The Sequence Translator allows you to use GS-E on other languages than enUS.  It will translate sequences to match your language.  If you also have the Sequence Editor you can translate sequences between languages.  The GS-E Sequence Translator is available on curse.com"] = true
L["Use Realtime Parsing"] = true
L["The Sequence Editor can attempt to parse the Sequences, PreMacro and PostMacro in realtime.  This is still experimental so can be turned off."] = true
L["Import"] = true
L["Close"] = true
L["Import Macro from Forums"] = true
L["Debug Output Options"] = true
L["Enable Debug for the following Modules"] = true
L["This will display debug messages for the GS-E Sequence Editor"] = true
L["This will display debug messages for the Core of GS-E"] = true
L["This will display debug messages for the GS-E Translator"] = true
L["Debug"] = true
L["Filter Macro Selection"] = true
L["Show All Macros in Editor"] = true
L["By setting this value the Sequence Editor will show every macro for every class."] = true
L["Show Class Macros in Editor"] = true
L["By setting this value the Sequence Editor will show every macro for your class."] = true
L["Source Language "] = true
L[" is not available.  Unable to translate sequence "] = true
L["Target language "] = true
L["Auto Create Class Macro Stubs"] = true
L["When loading or creating a sequence, if it is a macro of the same class automatically create the Macro Stub"] = true
L["Auto Create Global Macro Stubs"] = true
L["When loading or creating a sequence, if it is a global or the macro has an unknown specID automatically create the Macro Stub in Account Macros"] = true

-- Transmission stuff
L["GS-E is out of date. You can download the newest version from https://mods.curse.com/addons/wow/gnomesequencer-enhanced."] = true
L["This will display debug messages for the GS-E Ingame Transmission and transfer"] = true
