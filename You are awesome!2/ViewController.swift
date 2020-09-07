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
       print("👍viewDidLoad has run")
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎The message button was pressed")
        messageLabel.text = "You are awesome!"
        imageView.image = UIImage(named: "image0")
        
    }
}

