//
//  ViewController.swift
//  concentration
//
//  Created by Tim Davis on 31/05/2018.
//  Copyright © 2018 medicinetech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // func touchCard(_ sender   ---- are the names
    // first one is internal name
    // second one is exeternal name
    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton)  {
        flipCount += 1

    }

    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
    }
}

