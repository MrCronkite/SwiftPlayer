//
//  ViewController.swift
//  SwiftPlayer
//
//  Created by admin1 on 2.09.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var nameSong: UILabel!
    @IBOutlet weak var artistName: UILabel!
    
    @IBOutlet weak var progressBar: UISlider!
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var leftButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func playSong(_ sender: Any) {
    }
    
    @IBAction func nextSong(_ sender: Any) {
    }
    
    @IBAction func prevSong(_ sender: Any) {
    }
}
