//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Costin Valu on 10/5/18.
//  Copyright © 2018 Andreea Goder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
       override func viewDidLoad() {
        super.viewDidLoad()
       newBellImage()
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBellImage()
    }

    
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBellImage()
    }
    
    
    
    func newBellImage(){
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
}

