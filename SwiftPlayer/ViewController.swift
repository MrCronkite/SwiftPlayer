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
        
        do {
            if let audioPath = Bundle.main.path(forResource: albom[1]?.artistName, ofType: "mp3"){
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                progressBar.maximumValue = Float(player.duration)
                progressBar.
            }
        } catch {
            print("error")
        }
        
        progressBar.addTarget(self, action: #selector(change), for: .valueChanged)
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
            self.key = 2
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
            
        } else if key == 2 {
            self.key = 3
            imgView.image = albom[2]?.nameImage
            nameSong.text = albom[2]?.nameSong
            artistName.text = albom[2]?.artistName
            
            do {
                if let audioPath = Bundle.main.path(forResource: albom[2]?.artistName, ofType: "mp3"){
                    try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                }
            } catch {
                print("error")
            }
        } else if key == 3 {
            self.key = 1
            imgView.image = albom[3]?.nameImage
            nameSong.text = albom[3]?.nameSong
            artistName.text = albom[3]?.artistName
            
            do {
                if let audioPath = Bundle.main.path(forResource: albom[3]?.artistName, ofType: "mp3"){
                    try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                }
            } catch {
                print("error")
            }
        }
    }
    
    @IBAction func prevSong(_ sender: Any) {
    }
}
