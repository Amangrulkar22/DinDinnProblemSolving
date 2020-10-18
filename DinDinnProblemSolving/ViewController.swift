//
//  ViewController.swift
//  DinDinnProblemSolving
//
//  Created by Mangrulkar on 15/10/20.
//  Copyright © 2020 Ashwinkumar Mangrulkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calculate(inputString: "abc", number: 2)
        calculate(inputString: "abc", number: 28)
    }
    
    func calculate(inputString: String, number: Int) {
        // Variable for storing the changed string
        var newString: String = ""
        
        // iterate for every characters
        for index in inputString.unicodeScalars {
            
            // get ASCII value of each character from string
            let asciiValue = Int(index.value)
            
            // store number in the variable for further processing
            var duplicateNum = number
            
            // Logic to calculate, if number ahead character exceed 'z'
            if asciiValue + number > 122 {
                duplicateNum -= (122 - asciiValue)
                duplicateNum = duplicateNum % 26
                newString += "\(Character(UnicodeScalar(UInt8(96 + duplicateNum))))"
            } else {
                newString += "\(Character(UnicodeScalar(asciiValue + duplicateNum)!))"
            }
        }
        
        // print output string
        print(newString)
    }
}

