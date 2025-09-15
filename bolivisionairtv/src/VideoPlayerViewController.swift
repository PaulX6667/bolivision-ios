
import UIKit
import AVKit

class VideoPlayerViewController: UIViewController {
    var urlString: String!
    var player: AVPlayer?
    var playerController: AVPlayerViewController?

    init(urlString: String) {
        super.init(nibName: nil, bundle: nil)
        self.urlString = urlString
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        if let url = URL(string: urlString) {
            player = AVPlayer(url: url)
            playerController = AVPlayerViewController()
            playerController?.player = player
            addChild(playerController!)
            playerController?.view.frame = view.bounds
            view.addSubview(playerController!.view)
            playerController?.didMove(toParent: self)
            player?.play()
        }
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        playerController?.view.frame = view.bounds
    }
}
