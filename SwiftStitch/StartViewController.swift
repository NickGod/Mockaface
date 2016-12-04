//
//  StartViewController.swift
//  SwiftStitch
//
//  Created by Yifei Zhao on 12/4/16.
//  Copyright © 2016 ellipsis.com. All rights reserved.
//

import UIKit

class StartViewController: UIViewController, UITextFieldDelegate {
    

    @IBOutlet weak var EmailTextBox: UITextField!
    @IBOutlet weak var StartButton: UIButton!
    @IBOutlet weak var TestLabel: UILabel!
    @IBOutlet weak var SiginInButton: UIButton!
    var textPrint = "Hello World!"
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        EmailTextBox.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func StartButtonHandler(_ sender: UIButton) {
        print("START BUTTON CLICKED")
    }
    @IBAction func SiginInButtonHandler(_ sender: UIButton) {
        TestLabel.text = textPrint
    }
    
    @IBAction func EmailTextBoxHandler(_ sender: UITextField) {
        if(textFieldShouldReturn(sender)){
            textPrint = textFieldDidEndEditing(sender)
        }
    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField)  -> String{
        return textField.text!
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
