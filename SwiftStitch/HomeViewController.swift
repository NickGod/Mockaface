//
//  HomeViewController.swift
//  SwiftStitch
//
//  Created by Yifei Zhao on 12/4/16.
//  Copyright © 2016 ellipsis.com. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController , UITextFieldDelegate{
    // MARK: Properties
    /*
     @IBOutlet weak var StartButton: UIButton!
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    

    @IBOutlet weak var EmailTextBox: UITextField!
    @IBOutlet weak var PasscodeTextBox: UITextField!
    @IBOutlet weak var StartButton: UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBAction func StartButtonHandler(_ sender: UIButton) {
        print("START BUTTON CLICKED")
    }
    @IBAction func EmailHandler(_ sender: UITextField) {
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(textField: UITextField) {
        print(textField.text)
    }

}
