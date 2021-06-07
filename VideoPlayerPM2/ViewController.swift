//
//  ViewController.swift
//  VideoPlayerPM2
//
//  Created by marco rodriguez on 07/06/21.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    var videos = ["https://www.youtube.com/watch?v=uzEX-WPocX4","https://www.youtube.com/watch?v=jpT-R3TaB64"]
    
    @IBOutlet weak var tablaVideos: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tablaVideos.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        celda.textLabel?.text = videos[indexPath.row]
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tablaVideos.deselectRow(at: indexPath, animated: true)
        guard let url = URL(string: videos[indexPath.row]) else {
            return
        }
        let vc = SFSafariViewController(url: url)
        present(vc, animated: true, completion: nil)
    }
    
    
}
