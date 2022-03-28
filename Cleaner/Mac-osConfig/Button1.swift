import Cocoa
import LetsMove

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    //Close app when closing window
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true;
    }
    
    func applicationWillFinishLaunching(_ notification: Notification) {
        PFMoveToApplicationsFolderIfNecessary()
    }
    
}
