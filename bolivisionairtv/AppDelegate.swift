import UIKit
//import GoogleMobileAds
import FBSDKCoreKit

//@UIApplicationMain
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    //var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // FirebaseApp.configure() // comentado
        
        ApplicationDelegate.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
        //GADMobileAds.sharedInstance().start(completionHandler: nil)

        //window = UIWindow(frame: UIScreen.main.bounds)
        //let nav = UINavigationController(rootViewController: HomeViewController())
        //window?.rootViewController = nav
        //window?.makeKeyAndVisible()

        return true
    }

    // MARK: UISceneSession Lifecycle
    func application(
        _ application: UIApplication,
        configurationForConnecting connectingSceneSession: UISceneSession,
        options: UIScene.ConnectionOptions
    ) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(
        _ application: UIApplication,
        didDiscardSceneSessions sceneSessions: Set<UISceneSession>
    ) {}

    // Facebook SDK handler
    func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey : Any] = [:]
    ) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }

}
