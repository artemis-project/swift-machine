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

    //Show the contents of MainWindow
    print("Qt found and running. Turning on Swift Machine...")
    mainWindow.show()
    print("Done. Presenting content...")
    return application.exec()
    print("Ready for action.")
}

//Exit the application
exit(main())
print("Turning off Swift Machine and cleaning up any leftover ink...")
print("Done.")
