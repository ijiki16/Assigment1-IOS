//
//  ViewController.swift
//  Assigment1
//
//  Created by iuri jikidze on 9/28/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var arrayOfSevenSegments: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter (deadline: .now() + .seconds(5)){
            for sevenSegment in self.arrayOfSevenSegments{
//                sevenSegment.backgroundColor = .blue
                for segment in sevenSegment.subviews{
                    segment.backgroundColor = self.randomColor()
                }
            }
        }
        
        // Do any additional setup after loading the view.
    }
    
    
    func randomColor() -> UIColor{
        UIColor(red: CGFloat(arc4random_uniform(256))/255,
                green: CGFloat(arc4random_uniform(256))/255,
                blue: CGFloat(arc4random_uniform(256))/255,
                alpha: 1.0)
    }


}

