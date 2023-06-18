//
//  ViewController.swift
//  Method
//
//  Created by Yukiyo Suenaga on 2023/06/19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textField1: UITextField!
    @IBOutlet var textField2: UITextField!
    @IBOutlet var resultLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        guard let number1 = Int(textField1.text ?? ""),
              let number2 = Int(textField2.text ?? "") else {
            resultLabel.text = "Invalid input"
            return
            
        }
        
        let sum = addNumbers(number1, number2)
        resultLabel.text = "\(sum)"
    }
    func addNumbers(_ num1: Int, _ num2: Int) -> Int {
        return num1 + num2
    }
}

