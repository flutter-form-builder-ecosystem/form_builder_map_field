import UIKit
import Flutter
import GoogleMaps

fileprivate let secret: String = {
    guard let key = environmentVariable("MAPS_FIELD_API_KEY") else {
        fatalError(
            "Environment variable MAPS_FIELD_API_KEY not defined. "
        )
    }
    return key
}()

fileprivate func environmentVariable(_ name: String) -> String? {
    return ProcessInfo.processInfo.environment[name] //?.trim()
}

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GMSServices.provideAPIKey(secret)
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
