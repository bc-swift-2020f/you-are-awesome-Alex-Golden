//
//  ViewController.swift
//  You are awesome!2
//
//  Created by Alex Golden on 8/31/20.
//  Copyright © 2020 Alex Golden. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    var audioPlayer: AVAudioPlayer!
    let totalNumberOfSounds = 6
    var soundNumber = -1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = " "
    }
    func playSound () { if let sound = NSDataAsset(name: "sound0") {
                   do{
                       try audioPlayer = AVAudioPlayer(data: sound.data)
                       audioPlayer.play()
                   }catch{
                   print( "error: \(error.localizedDescription) could not initialize av AVAudioPlayer object")
                   }
               } else {
                   print("could not read sound file")}
        
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
       
  let messages = ["You are awesome!",
                  "You are great",
                  "You are fantastic",
                  "When the genius bar needs help, they call you",
                  "Fabulous? thats you",
                  "You've got the design skills of Jony Ive"]
       
        var newMessage = messages[Int.random(in: 0...messages.count-1)]
        
        while messageLabel.text == newMessage {
            newMessage = messages[Int.random(in: 0...messages.count-1)]
        }
        
        messageLabel.text = newMessage
        
        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0...totalNumberOfImages-1)
        } while imageNumber == newImageNumber
            imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        }
        
    var newSoundNumber: Int = 0
             repeat
    { newSoundNumber = Int.random(in: 0...totalNumberOfSounds-1)
             } while soundNumber == newSoundNumber
                 soundNumber = newSoundNumber
             print("the new sound number is \(soundNumber)")
             
//newSoundNumber not declared?
    
        playSound()
        
    @IBAction func playSoundToggled(_ sender: UISwitch) {
    if !sender.isOn && audioPlayer != nil {
        audioPlayer.stop()
    }
    
    
   
    
}

}

