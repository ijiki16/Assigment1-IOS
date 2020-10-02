//
//  ReusableSevenSegments.swift
//  Assigment1
//
//  Created by iuri jikidze on 9/30/20.
//

import UIKit

class ReusableSevenSegments: UIView {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet var segments: [UIView]!
    public var dict = [
        0 : [0,1,2,4,5,6],
        1 : [2,5],
        2 : [0,2,3,4,6],
        3 : [0,2,3,5,6],
        4 : [1,2,3,5],
        5 : [0,1,3,5,6],
        6 : [0,1,3,4,5,6],
        7 : [0,2,5],
        8 : [0,1,2,3,4,5,6],
        9 : [0,1,2,3,5,6]
    ]
    public let nibName = "SevenSegments"
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: nibName, bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
    public func displayNumber(_ number: Int) {
        for seg in segments{
            seg.backgroundColor = .systemGray2
        }
        for index in dict[number]!{
            segments[index].backgroundColor = .red
        }
    }

}
