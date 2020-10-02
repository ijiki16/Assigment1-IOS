//
//  ViewController.swift
//  Assigment1
//
//  Created by iuri jikidze on 9/28/20.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource   {
    
    

    
    @IBOutlet var arrayOfSevenSegments: [UIView]!
    @IBOutlet weak var segment1: ReusableSevenSegments!
    @IBOutlet weak var segment2: ReusableSevenSegments!
    @IBOutlet weak var segment3: ReusableSevenSegments!
    var pickerData: [[String]] = [[]]
    @IBOutlet weak var numPicker1: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //picker
        pickerData = [["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
                      ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
                      ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]]
        self.numPicker1.delegate = self
        self.numPicker1.dataSource = self
        //seven segment
        DispatchQueue.main.asyncAfter (deadline: .now()){
            self.segment1.displayNumber(0)
            self.segment2.displayNumber(0)
            self.segment3.displayNumber(0)
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData[0].count
    }
    
    override func didReceiveMemoryWarning() {
       super.didReceiveMemoryWarning()
    }
   
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       return pickerData[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        DispatchQueue.main.asyncAfter (deadline: .now()){
            switch component{
                case 0: self.segment1.displayNumber(row)
                case 1: self.segment2.displayNumber(row)
                case 2: self.segment3.displayNumber(row)
                default: self.segment1.displayNumber(row)
            }
        }
    }
}

