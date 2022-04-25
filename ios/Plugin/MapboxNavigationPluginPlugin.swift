import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(MapboxNavigationPluginPlugin)
public class MapboxNavigationPluginPlugin: CAPPlugin {
    private let implementation = MapboxNavigationPlugin()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }


    @objc func navigateToDestination(_ call: CAPPluginCall) {
        guard let latitude = Double(call.getString("latitude") ?? "0") else { return   }
        guard let longitude = Double(call.getString("longitude") ?? "0") else { return  }
      let userId = call.getString("userId") ?? ""

        implementation.navigateToDestination(latitude,longitude: longitude, userId: userId)

      call.resolve()


    }
}
