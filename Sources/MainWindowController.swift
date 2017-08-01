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
    let mainMenuMWC = mainMenu()

    //Init the window and all of its components
    init() {

        //Initialize window
        super.init()

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
        aliceKitLabels.text = "Coming soon, with more ink\n\nSomething AMAZING will be here in this window soon! We can't wait to demo it to you once we have enough ink.\n\nIf you want to contribute to the project, look for The Swift Machine on GitHub."
        horizontalLayout.add(widget: aliceKitLabels)
        horizontalSpacerRight = QSpacerItem(width: 40, height: 20, horizontalPolicy: .Expanding, verticalPolicy: .Minimum)
        horizontalLayout.add(item: horizontalSpacerRight)
        verticalLayout.add(layout: horizontalLayout)
        self.centralWidget = centralwidget

        //Create the menu and add all its members
        mainMenuMWC.menuFile = QMenu(parent: mainMenuMWC)
        mainMenuMWC.menuEdit = QMenu(parent: mainMenuMWC)
        mainMenuMWC.menuWindow = QMenu(parent: mainMenuMWC)
        mainMenuMWC.menuProject = QMenu(parent: mainMenuMWC)
        mainMenuMWC.createMenu()

        //Attach the menubar
        self.menuBar = mainMenuMWC

    }
}
