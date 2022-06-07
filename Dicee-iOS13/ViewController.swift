//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let arrOfImagesDice = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]

    @IBOutlet weak var firstDiceImage: UIImageView!
    @IBOutlet weak var secondDiceImage: UIImageView!
    @IBOutlet weak var keyPressRoll: UIButton!
    
    @IBAction func keyPressed(_ sender: UIButton) {
        keyPressRoll.alpha = 0.5
        firstDiceImage.alpha = 0
        secondDiceImage.alpha = 0
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) { [self] in
            keyPressRoll.alpha = 1
            firstDiceImage.alpha = 1
            secondDiceImage.alpha = 1
            firstDiceImage.image = arrOfImagesDice.randomElement()
            secondDiceImage.image = arrOfImagesDice.randomElement()
        }
    }
}

