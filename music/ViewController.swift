//
//  ViewController.swift
//  music
//
//  Created by 山谷美咲生 on 2019/04/12.
//  Copyright © 2019 山谷美咲生. All rights reserved.
//

import UIKit
import AVFoundation

class  ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


        // Do any additional setup after loading the view.
    @IBAction func natsuPlayButton(){
        setAudioPlayer(soundName: "natsu", type: "mp3")
        audioPlayer.play()
    }

    @IBAction func amePlayButton(){
        setAudioPlayer(soundName: "ame", type: "mp3")
        audioPlayer.play()
    }
    
    @IBAction func akiPlayButton(){
        setAudioPlayer(soundName: "aki", type: "mp3")
        audioPlayer.play()
    }
    
    func setAudioPlayer(soundName: String, type: String) {
        
        let soundFilePath = Bundle.main.path(forResource: soundName, ofType: type)!
        let fileURL = URL(fileURLWithPath: soundFilePath)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: fileURL)
        } catch {
            print("音楽ファイルが読み込めませんでした")
        }
}
    

}
