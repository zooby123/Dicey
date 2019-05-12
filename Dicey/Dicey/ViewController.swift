//
//  ViewController.swift
//  Dicey
//
//  Created by Zohaib Shahid on 02/04/2019.
//  Copyright © 2019 Zohaib khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceindex1: Int = 0
    var randomDiceindex2: Int = 0
    

    @IBOutlet weak var diceimageView1: UIImageView!
    @IBOutlet weak var diceimageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        
    }


    @IBAction func rollbuttonPressed(_ sender: UIButton){
        
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

        func updateDiceImages() {
            randomDiceindex1 = Int.random(in: 0 ... 5)
            randomDiceindex2 = Int.random(in: 0 ... 5)
            
            print(randomDiceindex1)
            
            diceimageView1.image = UIImage(named: diceArray[randomDiceindex1])
            diceimageView2.image = UIImage(named: diceArray[randomDiceindex2])
    
    }
}

