//
//  ViewController.swift
//  SwiftPlayer
//
//  Created by admin1 on 2.09.22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    
    var albom = SongList.contentSong()
    
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var nameSong: UILabel!
    @IBOutlet weak var artistName: UILabel!
    
    @IBOutlet weak var progressBar: UISlider!
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var leftButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        imgView.image = albom[1]?.nameImage
        nameSong.text = albom[1]?.nameSong
        artistName.text = albom[1]?.artistName
        
        do {
            if let audioPath = Bundle.main.path(forResource: albom[1]?.artistName, ofType: "mp3"){
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
            }
        } catch {
            print("error")
        }
    }

    
    @IBAction func playSong(_ sender: UIButton) {
        
        if player.isPlaying {
            self.player.pause()
            playButton.setImage(.init(systemName: "play.fill"), for: .normal)
        } else {
            self.player.play()
            playButton.setImage(.init(systemName: "pause.fill"), for: .normal)
        }
        
    }
    
    @IBAction func nextSong(_ sender: Any) {
       
    }
    
    @IBAction func prevSong(_ sender: Any) {
    }
}
