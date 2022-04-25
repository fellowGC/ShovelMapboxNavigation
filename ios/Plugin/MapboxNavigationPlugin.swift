import Foundation

@objc public class MapboxNavigationPlugin: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
