import Cocoa

class ProgressView: NSView {
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        if(InterfaceStyle().rawValue == "Dark"){
            self.alphaValue = 1.0
        } else {
            self.alphaValue = 0.7
        }
        
        self.layer?.backgroundColor = NSColor.black.cgColor
        self.layer?.cornerRadius = 15.0
        self.layer?.masksToBounds = true
    }
    
}
