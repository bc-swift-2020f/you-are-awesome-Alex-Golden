//
//  ViewController.swift
//  You are awesome!2
//
//  Created by Alex Golden on 8/31/20.
//  Copyright © 2020 Alex Golden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = " "
       print("👍viewDidLoad has run")
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
       
        print(imageNumber)
      //  let imageName = "image" + String(imageNumber)
        let imageName = "image/(imageNumber)"
        imageView.image = UIImage(named: imageName)
        imageNumber = imageNumber + 1
        if imageNumber == 10 {
            imageNumber = 0
        }
        
      
        
//
//    let awesomeMessage = "You are awesome!"
//        let greatMessage = "You are great!"
//        let bombMessage = "You are da bomb!"
//
//        if messageLabel.text == awesomeMessage {
//            messageLabel.text = greatMessage
//            imageView.image = UIImage(named: "image1")
//
//            else if messageLabel.text == greatMessage{
//                messageLabel.text = bombMessage
//                imageView.image = UIImage(named: "image2")
//            }
//        } else {messageLabel.text = awesomeMessage
//            imageView.image = UIImage(named: "image0") }
    }
    
}

