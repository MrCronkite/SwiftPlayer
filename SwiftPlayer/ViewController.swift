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
    
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var nameSong: UILabel!
    @IBOutlet weak var artistName: UILabel!
    
    @IBOutlet weak var progressBar: UISlider!
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var leftButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = UIImage.init(named: "img3")
        nameSong.text = "Never Gonna Give You Up"
        artistName.text = "Rick Astley"
        
        
    }

    
    @IBAction func playSong(_ sender: Any) {
        do {
            if let audioPath = Bundle.main.path(forResource: "never", ofType: "mp3"){
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
            }
        } catch {
            print("error")
        }
        player.play()
    }
    
    @IBAction func nextSong(_ sender: Any) {
    }
    
    @IBAction func prevSong(_ sender: Any) {
    }
}
