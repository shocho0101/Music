//
//  ViewController.swift
//  Music
//
//  Created by 張翔 on 2018/03/31.
//  Copyright © 2018年 sho. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func natsuPlayButton(){
        setAudioPlayer(soundName: "natsu", type: "mp3")
        audioPlayer.play()
    }
    
    @IBAction func amePlay(){
        setAudioPlayer(soundName: "ame", type: "mp3")
        audioPlayer.play()
    }
    
    @IBAction func akiPlayButton(){
        setAudioPlayer(soundName: "aki", type: "mp3")
        audioPlayer.play()
    }
    
    @IBAction func stop(){
        audioPlayer.stop()
    }
    
    func setAudioPlayer(soundName: String, type: String){
        let soundFilePath = Bundle.main.path(forResource: soundName, ofType: type)
        let fileURL = URL(fileURLWithPath: soundFilePath!)
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: fileURL)
        }catch{
            print("音楽ファイルが読み込めませんでした")
        }
    }

}

