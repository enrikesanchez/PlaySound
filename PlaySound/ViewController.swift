//
//  ViewController.swift
//  PlaySound
//
//  Created by esanchez on 4/11/19.
//  Copyright © 2019 Tec. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func playButtonPressed(_ sender: UIButton) {
        if let soundURL = Bundle.main.url(forResource: "AudioFile", withExtension: "mp3") {
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
                print(error)
            }
            
            audioPlayer.play()
        }else{
            print("Unable to locate audio file")
        }
    }
}

