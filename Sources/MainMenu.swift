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

  //Init all menubar functions

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

  init() {
      super.init()
      
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

  }
}
