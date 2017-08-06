/*

  **Main.swift**
  The Swift Machine
  Version 0.1.0
  (C) 2017 | Artemis Project Team
  Licensed under GNU GPL v3

*/

//Important AliceKit imports
#if os(Linux)
import Glibc
#else
import Darwin
#endif
import Qlift

//Create an object from UI_MainWindow.swift
class SwiftMachine: MainWindowController {
    override init() {
        super.init()
    }
}

//The primary function to open the window
func main() -> Int32 {
    // Create a Qt application and MainWindow object
    print("Running AliceKit and looking for Qt...")
    let application = QApplication()
    let mainWindow = SwiftMachine()

    //Set up a listener to see if the Exit menu has been activated (and shut down the app respectively)
    mainWindow.mainMenuMWC.actionExit.connectTriggered { checked in
        application.exit(returnCode: 0)
    }

    //Set up a listener to see if a secret has been activated (and do something hilarious)
    /*mainWindow.mainMenuMWC.actionSeparator.conntectTriggered { checked in
        var actionBendy: QDialog!
        actionBendy = QDialog(parent: mainWindow)
        actionBendy.
    }*/

    //Show the contents of MainWindow
    print("Qt found and running. Turning on Swift Machine...")
    mainWindow.show()
    print("Done. Presenting content...")
    return application.exec()
}

//Exit the application
exit(main())
