//
//  ViewController.swift
//  guessing-game
//
//  Created by Paula Lee on 4/19/17.
//  Copyright © 2017 Paula Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var guessField: UITextField!
    
    @IBAction func guessButton(_ sender: Any) {
        let num = String(arc4random_uniform(11))
        
        if guessField.text == num {
            resultLabel.text = "Correct!!"
        } else {
            resultLabel.text = "Oops! The number was \(num). Try again"
        }
        
    }
    
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

