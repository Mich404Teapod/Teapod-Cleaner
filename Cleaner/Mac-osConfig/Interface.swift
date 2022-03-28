import Foundation

enum InterfaceStyle : String {
    case Dark, Light
    
    init() {
        let type = UserDefaults.standard.string(forKey: "AppleInterfaceStyle") ?? "Light"
        self = InterfaceStyle(rawValue: type)!
    }
}
