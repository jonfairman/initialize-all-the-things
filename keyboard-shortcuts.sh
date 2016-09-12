#!/bin/bash

function addCustomMenuEntryIfNeeded
{
    if [[ $# == 0 || $# > 1 ]]; then
        echo "usage: addCustomMenuEntryIfNeeded com.company.appname"
        return 1
    else
        local contents=`defaults read com.apple.universalaccess "com.apple.custommenu.apps"`
        local grepResults=`echo $contents | grep $1`
        if [[ -z $grepResults ]]; then
            # does not contain app
            defaults write com.apple.universalaccess "com.apple.custommenu.apps" -array-add "$1"
        else
            # contains app already, so do nothing
            echo ""
        fi
    fi
}

function fixKeyboardShortcuts
{
    local COMMAND="@"
    local SHIFT="$"
    local OPTION="~"
    local CONTROL="^"
    local TAB="\\U21e5"
    local UP="\\Uf700"
    local DOWN="\\Uf701"
    local LEFT="\\Uf702"
    local RIGHT="\\Uf703"

    # Global
    # Save as PDF... : Command-P
    # Hide Finder: Command-Shift-Option-Command-G
    defaults write -g NSUserKeyEquivalents "{
        'Save as PDF...' = '${COMMAND}P';
        'Hide Finder' = '${COMMAND}${SHIFT}${OPTION}${CONTROL}G';
    }"

    # Finder
    # Show Package Contents: Command-Shift-O
    defaults write com.apple.finder NSUserKeyEquivalents "{ 'Show Package Contents' = '${COMMAND}${SHIFT}O'; }"
    addCustomMenuEntryIfNeeded "com.apple.finder"

    # PDFpenPro
    # OCR Document...: Command-Shift-O
    defaults write com.smileonmymac.PDFpenPro NSUserKeyEquivalents "{ 'OCR Document...' = '${COMMAND}${SHIFT}O'; }"
    addCustomMenuEntryIfNeeded "com.smileonmymac.PDFpenPro"

    # Things
    # As Completed: Right arrow
    defaults write com.culturedcode.things NSUserKeyEquivalents "{ 'As Completed' = '${RIGHT}'; }"
    addCustomMenuEntryIfNeeded "com.culturedcode.things"

    # # OmniGraffle
    # # Fit in Window: Command-0
    # # Grid Lines: Option-Command-G
    # defaults write com.omnigroup.OmniGraffle6 NSUserKeyEquivalents "{
    #     'Fit in Window' = '${COMMAND}0';
    #     'Grid Lines' = '${OPTION}${COMMAND}G';
    # }"
    # addCustomMenuEntryIfNeeded "com.omnigroup.OmniGraffle6"

    # Restart cfprefsd and Finder for changes to take effect.
    # You may also have to restart any apps that were running
    # when you changed their keyboard shortcuts. There is some
    # amount of voodoo as to what you do or do not have to
    # restart, and when.
    killall cfprefsd
    killall Finder
}

# Run the function
fixKeyboardShortcuts
