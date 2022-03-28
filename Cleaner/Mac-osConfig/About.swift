import Cocoa

class AboutViewController: NSViewController {

    @IBOutlet weak var daisyDiskBtn: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.view.wantsLayer = true
        daisyDiskBtn.toolTip = "Disk Inventory X is a freeware alternative."
    }
    
    override func awakeFromNib() {
        if self.view.layer != nil {
            var color : CGColor = CGColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            if(InterfaceStyle().rawValue == "Dark"){
                color = CGColor(red: 42/255.0, green: 41/255.0, blue: 41/255.0, alpha: 1.0)
            }
            self.view.layer?.backgroundColor = color
        }
    }
    
    @IBAction func monolingualBtnCLicked(_ sender: Any) {
        open(website: "http://ingmarstein.github.io/Monolingual/")
    }
    
    @IBAction func appCleanerBtnClicked(_ sender: Any) {
        open(website: "https://freemacsoft.net/appcleaner/")
    }
    
    @IBAction func daisyDiskBtnClicked(_ sender: Any) {
        open(website: "https://daisydiskapp.com")
    }
    
    @IBAction func githubBtnClicked(_ sender: Any) {
        open(website: "https://Mich404Teapod.github.io/Teapod-Cleaner/")
    }
    
    func open(website: String){
        if let url = URL(string: website), NSWorkspace.shared.open(url) {
            print("default browser was successfully opened")
        }
    }
}
