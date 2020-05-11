//
//  ViewController.swift
//  Sound
//
//  Created by 植田真梨 on 2020/05/09.
//  Copyright © 2020 Ueda Maririn. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
 
 
    @IBOutlet var drumButton: UIButton!
   //ドラムのサウンドファイルを読み込んでプレイヤーを作る
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchDownDrumButtom(){
        
    drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
    }
    
    @IBAction func touchUpDrumButton(){
       
    drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    
    

}

