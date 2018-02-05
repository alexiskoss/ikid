//
//  FirstViewController.swift
//  ikid
//
//  Created by Alexis Koss on 2/4/18.
//  Copyright © 2018 Alexis Koss. All rights reserved.
//

import UIKit

class KnockViewController: UIViewController {

    @IBOutlet weak var knockLabel: UILabel!
    @IBOutlet weak var knockButton: UIButton!
    var knock: Int = 1
    var knockPartOne = "Knock! Knock!"
    var knockPartTwo = "Who's there?"
    var knockPartThree = "Broken pencil."
    var knockPartFour = "Broken pencil who?"
    var knockPartFive = "Forget it—this joke is pointless."
    
    
    func flipFromLeft() {
        UIView.transition(with: self.view, duration: 0.40, options: UIViewAnimationOptions.transitionFlipFromLeft, animations: nil, completion: nil)
    }
    
    func flipFromRight() {
        UIView.transition(with: self.view, duration: 0.40, options: UIViewAnimationOptions.transitionFlipFromRight, animations: nil, completion: nil)
    }
    
    @IBAction func knockAnswer(_ sender: Any) {
        if(knock == 6) {
            knock = 2
        } else {
            knock += 1
        }
        switch knock {
        case 2:
            knockLabel.text = knockPartTwo
            knockButton.setTitle("Next", for: .normal)
            flipFromRight()
        case 3:
            knockLabel.text = knockPartThree
            flipFromLeft()
        case 4:
            knockLabel.text = knockPartFour
            flipFromRight()
        case 5:
            knockLabel.text = knockPartFive
            knockButton.setTitle("Back", for: .normal)
            flipFromLeft()
        default:
            knockLabel.text = knockPartOne
            knockButton.setTitle("Answer", for: .normal)
            flipFromLeft()
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

