import FBSDKCoreKit
import GoogleMaps
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        ApplicationDelegate.shared.application(application,
                                               didFinishLaunchingWithOptions: launchOptions)
        GMSServices.provideAPIKey("AIzaSyAdLJyjEJpizd-rAnnFXpPcR_u78KC1uaI")
        setupWindow()
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        let handled = ApplicationDelegate.shared.application(app, open: url, options: options)
        return handled
    }
    
    private func setupWindow() {
        let rootCoordinator = RootCoordinator(nil)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = rootCoordinator.start()
        self.window?.makeKeyAndVisible()
    }
}

