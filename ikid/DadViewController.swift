//
//  DadViewController.swift
//  ikid
//
//  Created by Alexis Koss on 2/4/18.
//  Copyright © 2018 Alexis Koss. All rights reserved.
//

import UIKit

class DadViewController: UIViewController {

    @IBOutlet weak var dadLabel: UILabel!
    @IBOutlet weak var dadButton: UIButton!
    var dadFlip: Bool = false
    var dadJoke: String = "How do penguins build their house?"
    var dadAnswer: String = "Igloos it together."
    
    @IBAction func dadAnswer(_ sender: UIButton) {
        if(!dadFlip) {
            UIView.transition(with: self.view, duration: 0.40, options: UIViewAnimationOptions.transitionFlipFromLeft, animations: nil, completion: nil)
            dadLabel.text = dadAnswer
            dadButton.setTitle("Back", for: .normal)
            dadFlip = true
        } else {
            UIView.transition(with: self.view, duration: 0.40, options: UIViewAnimationOptions.transitionFlipFromRight, animations: nil, completion: nil)
            dadLabel.text = dadJoke
            dadButton.setTitle("Answer", for: .normal)
            dadFlip = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
