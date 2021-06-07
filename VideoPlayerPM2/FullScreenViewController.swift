//
//  FullScreenViewController.swift
//  VideoPlayerPM2
//
//  Created by marco rodriguez on 07/06/21.
//

import UIKit
import AVKit
import AVFoundation

class FullScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        playvideo()
    }
 
    func playvideo() {
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "ios15", ofType: "m4v")!))
        
        let layer = AVPlayerLayer(player: player)
        layer.frame = view.bounds
        layer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(layer)
        player.volume = 0.5
        
        player.play()
        
    }

}
