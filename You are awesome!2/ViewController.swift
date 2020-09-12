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
    
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 9
    var audioPlayer: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = " "
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
        
        
        var newImage = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
        
        while imageView.image == newImage {
            newImage = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
        }
        imageView.image = newImage
        
        if let sound = NSDataAsset(name: "sound0") {
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }catch{
            print( "error: \(error.localizedDescription) could not initialize av AVAudioPlayer object")
            }
        } else {
            print("could not read sound file")}
        }
        
        
        
    }
    


  
