//
//  ViewController.swift
//  video_player
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 27/08/2023.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
    private func playVideo(){
       guard let path = Bundle.main.path(forResource: "Matchacha", ofType: "mp4") else {
            debugPrint("video.mp4 not found  ")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true){
            player.play()
        }
    }
    
    
    


}

