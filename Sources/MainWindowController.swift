/*

  **MainWindowController.swift**
  The Swift Machine
  Version 0.1.0
  (C) 2017 | Artemis Project Team
  Licensed under GNU GPL v3

*/
import Qlift

//Create a window object that contains all the window information
class MainWindowController: QMainWindow {

    //Init all UI components to be used later
    var centralwidget: QWidget!
    var verticalLayout: QVBoxLayout!
    var horizontalLayout: QHBoxLayout!
    var horizontalSpacerLeft: QSpacerItem!
    var aliceKitLabels: QLabel!
    var horizontalSpacerRight: QSpacerItem!
    var menubar: QMenuBar!
    var menuFile: QMenu!

    //Init all menubar functions
    var actionExit: QAction!
    var actionNewFile: QAction!
    var actionNewProject: QAction!
    var actionOpenFile: QAction!
    var actionSaveFile: QAction!


    //Init the window and all of its components
    init() {

        //Initialize window
        super.init()

        //Initialize menubar options

        /* File */
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

        //Initialize window's dimensions and the title of the window
        self.geometry = QRect(x: 0, y: 0, width: 800, height: 600)
        self.windowTitle = "The Swift Machine"

        //Initialize the contents of the window
        centralwidget = QWidget(parent: self)
        verticalLayout = QVBoxLayout(parent: centralwidget)
        horizontalLayout = QHBoxLayout(parent: nil)
        horizontalSpacerLeft = QSpacerItem(width: 40, height: 20, horizontalPolicy: .Expanding, verticalPolicy: .Minimum)
        horizontalLayout.add(item: horizontalSpacerLeft)
        aliceKitLabels = QLabel(parent: centralwidget)
        aliceKitLabels.text = "Congratulations!\nYour AliceKit app is successfully up and running!"
        horizontalLayout.add(widget: aliceKitLabels)
        horizontalSpacerRight = QSpacerItem(width: 40, height: 20, horizontalPolicy: .Expanding, verticalPolicy: .Minimum)
        horizontalLayout.add(item: horizontalSpacerRight)
        verticalLayout.add(layout: horizontalLayout)
        self.centralWidget = centralwidget

        //Initialize the menu bar and its components
        menubar = QMenuBar(parent: self)
        menubar.geometry = QRect(x: 0, y: 0, width: 205, height: 30)

        //Create the File menu and add all its members
        menuFile = QMenu(parent: menubar)
        menuFile.title = "&File"
        menuFile.add(action: actionNewFile)
        menuFile.add(action: actionNewProject)
        menuFile.add(action: actionOpenFile)
        menuFile.add(action: actionSaveFile)
        menuFile.add(action: actionExit)
        menubar.add(action: menuFile.menuAction())

        //Attach the menubar
        self.menuBar = menubar

    }
}
