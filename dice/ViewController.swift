//
//  ViewController.swift
//  dice
//
//  Created by P L Dhiman on 03/05/18.
//  Copyright © 2018 P L Dhiman. All rights reserved.
//

import UIKit
// new button add kiya
class ViewController: UIViewController {
    var randomNumDice1 : Int = 0
    var randomNumDice2 : Int = 0
    let diceArray=["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var diceview1: UIImageView!
    @IBOutlet weak var diceView2: UIImageView!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        changeDiceimgae()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        changeDiceimgae()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func changeDiceimgae(){
        randomNumDice1 = Int(arc4random_uniform(6))
        randomNumDice2 = Int(arc4random_uniform(6))
        print(randomNumDice2)
        diceview1.image=UIImage(named: diceArray[randomNumDice1])
        diceView2.image=UIImage(named: diceArray[randomNumDice2])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeDiceimgae()
    }

}

