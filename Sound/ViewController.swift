//
//  ViewController.swift
//  Sound
//
//  Created by 竹村明日香 on 2020/05/05.
//  Copyright © 2020 Takemura.assan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapDrumButton(){
        
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
        
    }

}

