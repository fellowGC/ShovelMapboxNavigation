import Foundation

@objc public class MapboxNavigationPlugin: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }


    @objc public func navigateToDestination(_ latitude: Double, longitude: Double, userId: String){
      print("Latitude: ", latitude);
      print("Longitude: ", longitude);
      print("userId: ", userId);
    }
}
