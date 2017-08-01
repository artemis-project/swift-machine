/*

  **MainMenu.swift**
  The Swift Machine
  Version 0.1.0
  (C) 2017 | Artemis Project Team
  Licensed under GNU GPL v3

*/

import Qlift

//Create the main menu object
class mainMenu: QMenuBar {

  //Initialize the menubar and its menu
  var menuFile: QMenu!
  var menuEdit: QMenu!
  var menuWindow: QMenu!
  var menuProject: QMenu!

  //Init all menubar functions
  var actionSeparator: QAction!
    /*
        File
            New File
            New Project
            Open
            Save
            Exit
     */

  var actionExit: QAction!
  var actionNewFile: QAction!
  var actionNewProject: QAction!
  var actionOpenFile: QAction!
  var actionSaveFile: QAction!

    /*
        Edit
            Cut
            Copy
            Paste
            Find and Replace
            Emoji and Symbols
            Preferences
     */
     
   var actionCut: QAction!
   var actionCopy: QAction!
   var actionPaste: QAction!
   var actionFindReplace: QAction!
   var actionEmojiSymbols: QAction!
   var actionPreferences: QAction!

    /*
        Window
            Assistant Editor
            Command Launchpad
            ---
            Minimize
            Maximize
     */
    var actionShowAssistantEditor: QAction!
    var actionShowCommandLaunchpad: QAction!
    var actionMinimize: QAction!
    var actionMaximize: QAction!

    /*
        Project
            Debug
            Release
            Rebuild
            Project Options
     */
    
    var actionDebugProject: QAction!
    var actionReleaseProject: QAction!
    var actionRebuildProject: QAction!
    var actionProjectPreferences: QAction!

  init() {
      super.init()
      
      actionSeparator = QAction(parent: self)
      actionSeparator.text = "------"

      //File
      actionNewFile = QAction(parent: self)
      actionNewFile.text = "&New File"

      actionNewProject = QAction(parent: self)
      actionNewProject.text = "New &Project"

      actionOpenFile = QAction(parent: self)
      actionOpenFile.text = "&Open"

      actionSaveFile = QAction(parent: self)
      actionSaveFile.text = "&Save"

      actionExit = QAction(parent: self)
      actionExit.text = "&Exit"
      
      //Edit
      actionCut = QAction(parent: self)
      actionCut.text = "&Cut"
      
      actionCopy = QAction(parent: self)
      actionCopy.text = "C&opy"
      
      actionPaste = QAction(parent: self)
      actionPaste.text = "&Paste"
      
      actionFindReplace = QAction(parent: self)
      actionFindReplace.text = "&Find and Replace"
      
      actionEmojiSymbols = QAction(parent: self)
      actionEmojiSymbols.text = "&Emoji and Symbols"
      
      actionPreferences = QAction(parent: self)
      actionPreferences.text = "P&references"

      //Window
      actionShowAssistantEditor = QAction(parent: self)
      actionShowAssistantEditor.text = "&Assistant Editor"

      actionShowCommandLaunchpad = QAction(parent: self)
      actionShowCommandLaunchpad.text = "&Command Launchpad"

      actionMinimize = QAction(parent: self)
      actionMinimize.text = "&Minimize"

      actionMaximize = QAction(parent: self)
      actionMaximize.text = "M&aximize"

      //Project
      actionDebugProject = QAction(parent: self)
      actionDebugProject.text = "&Debug"

      actionReleaseProject = QAction(parent: self)
      actionReleaseProject.text = "&Release"

      actionRebuildProject = QAction(parent: self)
      actionRebuildProject.text = "R&ebuild"

      actionProjectPreferences = QAction(parent: self)
      actionProjectPreferences.text = "&Project Options"
  }

  func createMenu() {

    //Create the File menu and add all its members
    menuFile.title = "&File"
    menuFile.add(action: actionNewFile)
    menuFile.add(action: actionNewProject)
    menuFile.add(action: actionOpenFile)
    menuFile.add(action: actionSaveFile)
    menuFile.add(action: actionExit)
    add(action: menuFile.menuAction())
    
    menuEdit.title = "&Edit"
    menuEdit.add(action: actionCut)
    menuEdit.add(action: actionCopy)
    menuEdit.add(action: actionPaste)
    menuEdit.add(action: actionFindReplace)
    menuEdit.add(action: actionEmojiSymbols)
    menuEdit.add(action: actionPreferences)
    add(action: menuEdit.menuAction())

    menuWindow.title = "&Window"
    menuWindow.add(action: actionShowAssistantEditor)
    menuWindow.add(action: actionShowCommandLaunchpad)
    menuWindow.add(action: actionSeparator)
    menuWindow.add(action: actionMinimize)
    menuWindow.add(action: actionMaximize)
    add(action: menuWindow.menuAction())

    menuProject.title = "&Project"
    menuProject.add(action: actionDebugProject)
    menuProject.add(action: actionReleaseProject)
    menuProject.add(action: actionRebuildProject)
    menuProject.add(action: actionProjectPreferences)
    add(action: menuProject.menuAction())

  }
}
