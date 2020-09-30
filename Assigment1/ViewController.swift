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
        DispatchQueue.main.asyncAfter (deadline: .now() + .seconds(2)){
            self.segment1.displayNumber(0)
        }
        DispatchQueue.main.asyncAfter (deadline: .now() + .seconds(2)){
            self.segment2.displayNumber(1)
        }
        DispatchQueue.main.asyncAfter (deadline: .now() + .seconds(2)){
            self.segment3.displayNumber(2)
        }
        
    }
    
    
    func randomColor() -> UIColor{
        UIColor(red: CGFloat(arc4random_uniform(256))/255,
                green: CGFloat(arc4random_uniform(256))/255,
                blue: CGFloat(arc4random_uniform(256))/255,
                alpha: 1.0)
    }


}

