//
//  YoutubeHelperViewController.swift
//  VideoPlayerPM2
//
//  Created by marco rodriguez on 09/06/21.
//

import UIKit
import youtube_ios_player_helper

class YoutubeHelperViewController: UIViewController, YTPlayerViewDelegate {
    @IBOutlet weak var reproductorYoutubeView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        reproductorYoutubeView.delegate = self
        reproductorYoutubeView.load(withVideoId: "VVr3wPF5ifY")
    }
    

    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        reproductorYoutubeView.playVideo()
    }
}
