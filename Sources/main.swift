#if os(Linux)
import Glibc
#else
import Darwin
#endif
import Qlift


class MainWindow: UI_MainWindow {
    override init() {
        super.init()
    }
}

func main() -> Int32 {
  print("Running AliceKit and looking for Qt...")
    let application = QApplication()
    let mainWindow = MainWindow()
    print("Qt found and running. Turning on Swift Machine...")
    mainWindow.show()
    print("Done. Presenting content...")
    return application.exec()
    print("Ready for action.")
}

exit(main())
print("Turning off Swift Machine and cleaning up any leftover ink...")
print("Done.")
