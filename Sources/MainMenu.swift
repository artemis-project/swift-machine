/*

  **MainMenu.swift**
  The Swift Machine
  Version 0.1.0
  (C) 2017 | Artemis Project Team
  Licensed under GNU GPL v3

*/

//TODO: Fix menubar issue of it not attaching properly to MainWindowController

import Qlift

//Create the main menu object
class mainMenu: QMenuBar {

  //Initialize the menubar and its menu
  var menuFile: QMenu!

  //Init all menubar functions
  var actionExit: QAction!
  var actionNewFile: QAction!
  var actionNewProject: QAction!
  var actionOpenFile: QAction!
  var actionSaveFile: QAction!



  init() {
      super.init()

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
  }

  func createMenu() {

    //Create the File menu and add all its members
    menuFile.title = "&File"
    menuFile.add(action: actionNewFile)
    menuFile.add(action: actionNewProject)
    menuFile.add(action: actionOpenFile)
    menuFile.add(action: actionSaveFile)
    menuFile.add(action: actionExit)

  }
}
