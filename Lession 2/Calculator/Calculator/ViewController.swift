//
//  ViewController.swift
//  Calculator
//
//  Created by Tran Tri on 3/1/18.
//  Copyright © 2018 Tran Tri. All rights reserved.
//

import UIKit

enum Operation:String {
    case Add = "+"
    case Subtract = "-"
    case Divide = "/"
    case Multiply = "*"
    case Null = "Null"
}

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    
    var runningNumber = ""
    var leftValue = ""
    var rightValue = ""
    var result = ""
    var currentOperation:Operation = .Null
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.text = "0"
        
    }

    @IBAction func numberPressed(_ sender : UIButton){
        if runningNumber.count  <= 8 { // allow input max 9 number
            runningNumber +=  "\(sender.tag - 1)"
            outputLabel.text = runningNumber
        }
    }
    
    @IBAction func clearPressed(_ sender : UIButton){
        runningNumber = ""
        leftValue = ""
        rightValue = ""
        currentOperation = .Null
        outputLabel.text = "0"
    }
    
    @IBAction func dotPressed(_ sender : UIButton){
        if runningNumber.count  <= 7 {  // allow input max 8 number
            runningNumber +=  "."
            outputLabel.text = runningNumber
        }
    }

    @IBAction func equalPressed(_ sender : UIButton){
        operation(operation: currentOperation)
    }
    
    @IBAction func addPressed(_ sender : UIButton){
        operation(operation: .Add)
    }
    
    @IBAction func subtractPressed(_ sender : UIButton){
        operation(operation: .Subtract)
    }
    
    @IBAction func multiplylPressed(_ sender : UIButton){
        operation(operation: .Multiply)
    }
    
    @IBAction func dividePressed(_ sender : UIButton){
        operation(operation: .Divide)
    }
    
    @IBAction func addSubtractPressed(_ sender: UIButton){
        if result == "" {
            result = "\(Double(runningNumber)! * Double("-1")!)"
        } else {
            result = "\(Double(result)! * Double("-1")!)"
        }
        print("\(Double(result)! * Double("-1")!)")
        runningNumber = result
        outputLabel.text = result
    }
    
    @IBAction func percentPressed(_ sender: UIButton){
        if result == "" {
            result = "\(Double(runningNumber)! / Double("100")!)"
        } else {
            result = "\(Double(result)! / Double("100")!)"
        }
        runningNumber = result
        outputLabel.text = result
   }
    
    func operation(operation: Operation){
        if currentOperation != .Null {
            if runningNumber != "" {
                rightValue = runningNumber
                runningNumber = ""
        
                switch currentOperation {
                case .Add:
                    result = "\(Double(leftValue)! + Double(rightValue)!)"
                case .Subtract:
                    result = "\(Double(leftValue)! - Double(rightValue)!)"
                case .Divide:
                    result = "\(Double(leftValue)! / Double(rightValue)!)"
                case .Multiply:
                    result = "\(Double(leftValue)! * Double(rightValue)!)"
                case .Null:
                    break
                    
                }
            
                leftValue = result
                outputLabel.text = result
            }
            currentOperation = operation
        } else {
            leftValue = runningNumber
            runningNumber = ""
            currentOperation = operation
        }
    }
}

