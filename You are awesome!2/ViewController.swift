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
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = " "
       print("👍viewDidLoad has run")
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎The message button was pressed")
    let awesomeMessage = "You are awesome!"
        let greatMessage = "You are great!"
        let bombMessage = "You are da bomb!"
        
        if messageLabel.text == awesomeMessage {
            messageLabel.text = greatMessage
            imageView.image = UIImage(named: "image1")
            
            else if messageLabel.text == greatMessage{
                messageLabel.text = bombMessage
                imageView.image = UIImage(named: "image2")
            }
        } else {messageLabel.text = awesomeMessage
            imageView.image = UIImage(named: "image0") }
    }
    
}

