import Foundation
import GoogleMobileAds
import UIKit

class AdManager {
    static let shared = AdManager()
    private var interstitial: GADInterstitialAd?

    func loadInterstitial(adUnitID: String) {
        let request = GADRequest()
        GADInterstitialAd.load(withAdUnitID: adUnitID, request: request) { ad, error in
            if let error = error { print("Interstitial failed: \(error)") ; return }
            self.interstitial = ad
        }
    }

    func showInterstitial(from vc: UIViewController) {
        if let inter = interstitial {
            inter.present(fromRootViewController: vc)
        } else {
            print("Interstitial not ready")
        }
    }
}
