//
//  VideoHerramientasViewController.swift
//  VideoPlayerPM2
//
//  Created by marco rodriguez on 07/06/21.
//

import UIKit
import AVKit
import AVFoundation

class VideoHerramientasViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        playVideo()
    }
    
    func playVideo() {
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "ios15", ofType: "m4v")!))
        
        let vc = AVPlayerViewController()
        
        vc.player = player
        present(vc, animated: true, completion: nil)
    }
   

}
