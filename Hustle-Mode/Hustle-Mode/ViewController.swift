//
//  ViewController.swift
//  Hustle-Mode
//
//  Created by Tishaun Bristol on 3/7/18.
//  Copyright © 2018 Bristol Developers. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var darkBlueBG: UIImageView!
    @IBOutlet var powerButton: UIButton!
    @IBOutlet var cloudHolder: UIView!
    @IBOutlet var rocket: UIImageView!
    @IBOutlet var hustleLabel: UILabel!
    @IBOutlet var onLabel: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error as NSError {
            print(error.description)
        }
        
    }


    @IBAction func powetButtonPressed(_ sender: Any) {
        
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerButton.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 140, width: 375, height: 402)
        }) { (finshed) in
            self.hustleLabel.isHidden = false
            self.onLabel.isHidden = false
           
        }
    }
    
}

