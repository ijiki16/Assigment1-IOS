//
//  ViewController.swift
//  Assigment1
//
//  Created by iuri jikidze on 9/28/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var arrayOfSevenSegments: [UIView]!
    @IBOutlet weak var segment1: ReusableSevenSegments!
    @IBOutlet weak var segment2: ReusableSevenSegments!
    @IBOutlet weak var segment3: ReusableSevenSegments!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var digit: Int = 127
        DispatchQueue.main.asyncAfter (deadline: .now() + .seconds(2)){
            self.segment1.displayNumber((digit/100)%10)
            self.segment2.displayNumber((digit/10)%10)
            self.segment3.displayNumber(digit%10)
        }
    }
}

