//
//  SongList.swift
//  SwiftPlayer
//
//  Created by admin1 on 8.09.22.
//

import UIKit


struct SongList {
    let nameImage: UIImage
    let nameSong: String
    let artistName: String
    
    static func contentSong() -> [Int: SongList] {
        [
        1: .init(nameImage: .init(named: "img1")!, nameSong: "Нас Не Догонят", artistName: "tATu"),
        2: .init(nameImage: .init(named: "img2")!, nameSong: "Souvenirs", artistName: "Three Days Grace"),
        3: .init(nameImage: .init(named: "img3")!, nameSong: "Never Gonna Give You Up", artistName: "Rick Astley")
        ]
    }
}


