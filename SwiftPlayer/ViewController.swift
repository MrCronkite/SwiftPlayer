//
//  ViewController.swift
//  SwiftPlayer
//
//  Created by admin1 on 2.09.22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var key = 1
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
        playButton.layer.cornerRadius = 10
        rightButton.layer.cornerRadius = 10
        leftButton.layer.cornerRadius = 10
        
        do {
            if let audioPath = Bundle.main.path(forResource: albom[1]?.artistName, ofType: "mp3"){
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                progressBar.maximumValue = Float(player.duration)
            }
        } catch {
            print("error")
        }
        
        progressBar.addTarget(self, action: #selector(change), for: .valueChanged)
    }
    
    private func changeSong(index: Int){
        self.key = index
        imgView.image = albom[index]?.nameImage
        nameSong.text = albom[index]?.nameSong
        artistName.text = albom[index]?.artistName
        playButton.setImage(.init(systemName: "play.fill"), for: .normal)
        
        do {
            if let audioPath = Bundle.main.path(forResource: albom[index]?.artistName, ofType: "mp3"){
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
    
    @objc func change(sender: UISlider){
        self.player.currentTime = TimeInterval(sender.value)
       
    }
    
    @IBAction func nextSong(_ sender: Any) {
        if key == 1 {
            changeSong(index: 2)
        } else if key == 2 {
            changeSong(index: 3)
        } else if key == 3 {
            changeSong(index: 1)
        }
    }
    
    @IBAction func prevSong(_ sender: Any) {
        if key == 1 {
            changeSong(index: 3)
        } else if key == 2 {
            changeSong(index: 1)
        } else if key == 3 {
            changeSong(index: 2)
        }
    }
}
