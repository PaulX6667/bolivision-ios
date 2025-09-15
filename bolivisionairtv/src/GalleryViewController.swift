
import UIKit
import AVKit

struct VideoItem {
    let title: String
    let url: String
    let thumb: String?
}

class GalleryViewController: UITableViewController {

    var items: [VideoItem] = [
        VideoItem(title: "Demo 1", url: "https://path/to/video1.mp4", thumb: nil),
        VideoItem(title: "Demo 2", url: "https://path/to/video2.mp4", thumb: nil)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Galería"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let it = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = it.title
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let it = items[indexPath.row]
        if let url = URL(string: it.url) {
            let player = AVPlayer(url: url)
            let vc = AVPlayerViewController()
            vc.player = player
            present(vc, animated: true) {
                player.play()
            }
        }
    }
}
