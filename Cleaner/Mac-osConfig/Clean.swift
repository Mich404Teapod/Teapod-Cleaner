import Cocoa

class BlueButton: NSButton {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        self.layer?.backgroundColor = CGColor.init(red: 45.0/255, green: 135.0/255, blue: 250.0/255, alpha: 1)
        self.layer?.cornerRadius = 15.0
    }
    
    override func awakeFromNib() {
        //text
        let style = NSMutableParagraphStyle()
        style.alignment = .center
        self.attributedTitle = NSAttributedString(string: "Clean", attributes: [ NSAttributedString.Key.foregroundColor : NSColor.white,
                                                                                   NSAttributedString.Key.paragraphStyle : style,
                                                                                   NSAttributedString.Key.font: NSFont(name: "Arial", size: 18)!])
    }
}
