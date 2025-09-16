import UIKit
import AVKit
import AVFoundation

class HomeViewController: UIViewController {

    var player: AVPlayer?
    var playerLayer: AVPlayerLayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 13.0, *) {
            view.backgroundColor = .systemBackground
        } else {
            view.backgroundColor = .white
        }
        title = "Bolivision - Home"

        setupPlayer()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Galería", style: .plain, target: self, action: #selector(openGallery))
    }

    @objc func openGallery() {
        let g = GalleryViewController(style: .plain)
        navigationController?.pushViewController(g, animated: true)
    }

    func setupPlayer() {
        guard let url = URL(string: "https://d2qsan2ut81n2k.cloudfront.net/live/20446f64-67d8-4100-8c4b-20a759a8e919/ts:abr.m3u8") else { return }
        player = AVPlayer(url: url)
        playerLayer = AVPlayerLayer(player: player)
        playerLayer?.videoGravity = .resizeAspect

        let playerView = UIView(frame: CGRect(x: 0, y: topbarHeight(), width: view.bounds.width, height: 220))        
        if let pl = playerLayer {
            playerView.layer.addSublayer(pl)
        }
        view.addSubview(playerView)

        playerLayer?.frame = playerView.bounds
        player?.play()
    }

    func topbarHeight() -> CGFloat {
        return (navigationController?.navigationBar.frame.maxY ?? 64)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if let pl = playerLayer {
            pl.frame = CGRect(x: 0, y: topbarHeight(), width: view.bounds.width, height: 220)
        }
    }

    deinit {
        player?.pause()
    }
}
