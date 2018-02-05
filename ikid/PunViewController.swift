//
//  SecondViewController.swift
//  ikid
//
//  Created by Alexis Koss on 2/4/18.
//  Copyright © 2018 Alexis Koss. All rights reserved.
//

import UIKit

class PunViewController: UIViewController {
    
    @IBOutlet weak var punLabel: UILabel!
    @IBOutlet weak var punButton: UIButton!
    var punFlip: Bool = false
    var punJoke: String = "What do you call birds that stick together?"
    var punAnswer: String = "Vel-Crow"
    
    @IBAction func punAnswer(_ sender: UIButton) {
        if(!punFlip) {
        UIView.transition(with: self.view, duration: 0.40, options: UIViewAnimationOptions.transitionFlipFromLeft, animations: nil, completion: nil)
            punLabel.text = punAnswer
            punButton.setTitle("Back", for: .normal)
            punFlip = true
        } else {
            UIView.transition(with: self.view, duration: 0.40, options: UIViewAnimationOptions.transitionFlipFromRight, animations: nil, completion: nil)
            punLabel.text = punJoke
            punButton.setTitle("Answer", for: .normal)
            punFlip = false
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

