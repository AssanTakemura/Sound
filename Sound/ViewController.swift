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
    
    @IBOutlet var drumButton: UIButton!
    
    @IBOutlet var pianoButton: UIButton!
    
    @IBOutlet var guitarBuuton: UIButton!
    
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownDrumButton(){
        
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
        
    }
    
    @IBAction func touchDownPianoButton(){
        
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        
        pianoSoundPlayer.currentTime = 0
        
        pianoSoundPlayer.play()
        
    }
    
    @IBAction func touchDownGuitarButton(){
        
        guitarBuuton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        
        guitarSoundPlayer.currentTime = 0
        
        guitarSoundPlayer.play()
        
        
    }
    
    @IBAction func touchUpDrumButton(){
        
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
        
    }
    
    @IBAction func touchUpPianoButton(){
        
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
        
    }
    
    @IBAction func touchUpGuitarButton(){
        
        guitarBuuton.setImage(UIImage(named: "guitarImage"), for: .normal)
        
    }
}

