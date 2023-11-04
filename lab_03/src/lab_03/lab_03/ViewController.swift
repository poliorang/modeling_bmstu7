//
//  ViewController.swift
//  lab_03
//
//  Created by Polina Egorova on 01.11.2023.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var algoLabel: UILabel!
    @IBOutlet weak var tableLabel: UILabel!
    @IBOutlet weak var manualLabel: UILabel!
    @IBOutlet weak var Discharge1_1Label: UILabel!
    @IBOutlet weak var discharge1_2Label: UILabel!
    @IBOutlet weak var discharge1_3Label: UILabel!
    @IBOutlet weak var discharge2_1Label: UILabel!
    @IBOutlet weak var discharge2_2Label: UILabel!
    @IBOutlet weak var discharge2_3Label: UILabel!
    @IBOutlet weak var discharge3_1Button: UIButton!
    @IBOutlet weak var discharge3_2Button: UIButton!
    @IBOutlet weak var discharge3_3Button: UIButton!
    
    @IBOutlet weak var _1x1x1: UILabel!
    @IBOutlet weak var _1x1x2: UILabel!
    @IBOutlet weak var _1x1x3: UILabel!
    @IBOutlet weak var _1x1x4: UILabel!
    @IBOutlet weak var _1x1x5: UILabel!
    @IBOutlet weak var _1x1x6: UILabel!
    @IBOutlet weak var _1x1x7: UILabel!
    @IBOutlet weak var _1x1x8: UILabel!
    @IBOutlet weak var _1x1x9: UILabel!
    @IBOutlet weak var _1x1x10: UILabel!
    
    @IBOutlet weak var _1x2x1: UILabel!
    @IBOutlet weak var _1x2x2: UILabel!
    @IBOutlet weak var _1x2x3: UILabel!
    @IBOutlet weak var _1x2x4: UILabel!
    @IBOutlet weak var _1x2x5: UILabel!
    @IBOutlet weak var _1x2x6: UILabel!
    @IBOutlet weak var _1x2x7: UILabel!
    @IBOutlet weak var _1x2x8: UILabel!
    @IBOutlet weak var _1x2x9: UILabel!
    @IBOutlet weak var _1x2x10: UILabel!
    
    @IBOutlet weak var _1x3x1: UILabel!
    @IBOutlet weak var _1x3x2: UILabel!
    @IBOutlet weak var _1x3x3: UILabel!
    @IBOutlet weak var _1x3x4: UILabel!
    @IBOutlet weak var _1x3x5: UILabel!
    @IBOutlet weak var _1x3x6: UILabel!
    @IBOutlet weak var _1x3x7: UILabel!
    @IBOutlet weak var _1x3x8: UILabel!
    @IBOutlet weak var _1x3x9: UILabel!
    @IBOutlet weak var _1x3x10: UILabel!
    
    @IBOutlet weak var _2x1x1: UILabel!
    @IBOutlet weak var _2x1x2: UILabel!
    @IBOutlet weak var _2x1x3: UILabel!
    @IBOutlet weak var _2x1x4: UILabel!
    @IBOutlet weak var _2x1x5: UILabel!
    @IBOutlet weak var _2x1x6: UILabel!
    @IBOutlet weak var _2x1x7: UILabel!
    @IBOutlet weak var _2x1x8: UILabel!
    @IBOutlet weak var _2x1x9: UILabel!
    @IBOutlet weak var _2x1x10: UILabel!
    
    @IBOutlet weak var _2x2x1: UILabel!
    @IBOutlet weak var _2x2x2: UILabel!
    @IBOutlet weak var _2x2x3: UILabel!
    @IBOutlet weak var _2x2x4: UILabel!
    @IBOutlet weak var _2x2x5: UILabel!
    @IBOutlet weak var _2x2x6: UILabel!
    @IBOutlet weak var _2x2x7: UILabel!
    @IBOutlet weak var _2x2x8: UILabel!
    @IBOutlet weak var _2x2x9: UILabel!
    @IBOutlet weak var _2x2x10: UILabel!
    
    @IBOutlet weak var _2x3x1: UILabel!
    @IBOutlet weak var _2x3x2: UILabel!
    @IBOutlet weak var _2x3x3: UILabel!
    @IBOutlet weak var _2x3x4: UILabel!
    @IBOutlet weak var _2x3x5: UILabel!
    @IBOutlet weak var _2x3x6: UILabel!
    @IBOutlet weak var _2x3x7: UILabel!
    @IBOutlet weak var _2x3x8: UILabel!
    @IBOutlet weak var _2x3x9: UILabel!
    @IBOutlet weak var _2x3x10: UILabel!
 
    @IBOutlet weak var _1x1: UITextField!
    @IBOutlet weak var _1x2: UITextField!
    @IBOutlet weak var _1x3: UITextField!
    @IBOutlet weak var _1x4: UITextField!
    @IBOutlet weak var _1x5: UITextField!
    @IBOutlet weak var _1x6: UITextField!
    @IBOutlet weak var _1x7: UITextField!
    @IBOutlet weak var _1x8: UITextField!
    @IBOutlet weak var _1x9: UITextField!
    @IBOutlet weak var _1x10: UITextField!
    
    @IBOutlet weak var _2x1: UITextField!
    @IBOutlet weak var _2x2: UITextField!
    @IBOutlet weak var _2x3: UITextField!
    @IBOutlet weak var _2x4: UITextField!
    @IBOutlet weak var _2x5: UITextField!
    @IBOutlet weak var _2x6: UITextField!
    @IBOutlet weak var _2x7: UITextField!
    @IBOutlet weak var _2x8: UITextField!
    @IBOutlet weak var _2x9: UITextField!
    @IBOutlet weak var _2x10: UITextField!
    
    @IBOutlet weak var _3x1: UITextField!
    @IBOutlet weak var _3x2: UITextField!
    @IBOutlet weak var _3x3: UITextField!
    @IBOutlet weak var _3x5: UITextField!
    @IBOutlet weak var _3x4: UITextField!
    @IBOutlet weak var _3x6: UITextField!
    @IBOutlet weak var _3x7: UITextField!
    @IBOutlet weak var _3x8: UITextField!
    @IBOutlet weak var _3x9: UITextField!
    @IBOutlet weak var _3x10: UITextField!
    
    @IBOutlet weak var answer1_1: UILabel!
    @IBOutlet weak var answer1_2: UILabel!
    @IBOutlet weak var answer1_3: UILabel!
    @IBOutlet weak var answer2_1: UILabel!
    @IBOutlet weak var answer2_2: UILabel!
    @IBOutlet weak var answer2_3: UILabel!
    @IBOutlet weak var answer3_1: UILabel!
    @IBOutlet weak var answer3_2: UILabel!
    @IBOutlet weak var answer3_3: UILabel!
    
    @IBOutlet weak var generateButton: UIButton!
    @IBOutlet weak var calculateButton: UIButton!
    
    let alorithmMethod = AlgorithmMethod()
    let helpers = Helpers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
        setupButtons()
        
        click1Button(discharge3_1Button!)
        generate(generateButton!)
    }

    func setupButtons() {
        for bt in [generateButton, calculateButton] {
            bt?.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            bt?.layer.borderWidth = 1
            bt?.layer.cornerRadius = 4
            
            bt?.layer.shadowColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            bt?.layer.shadowOpacity = 0.5
            bt?.layer.shadowRadius = 4
        }
    }
        
    func setupLabels() {
        [algoLabel, tableLabel, manualLabel,
         Discharge1_1Label, discharge1_2Label, discharge1_3Label,
         discharge2_1Label, discharge2_2Label, discharge2_3Label,
         discharge3_1Button, discharge3_2Button, discharge3_3Button].forEach {
            $0.layer.masksToBounds = true
            $0.layer.cornerRadius = 4
        }
        
        for lb in [_1x1x1, _1x1x2, _1x1x3, _1x1x4, _1x1x5, _1x1x6, _1x1x7, _1x1x8, _1x1x9, _1x1x10,
                   _1x2x1, _1x2x2, _1x2x3, _1x2x4, _1x2x5, _1x2x6, _1x2x7, _1x2x8, _1x2x9, _1x2x10,
                   _1x3x1, _1x3x2, _1x3x3, _1x3x4, _1x3x5, _1x3x6, _1x3x7, _1x3x8, _1x3x9, _1x3x10] {
            lb?.layer.masksToBounds = true
            lb?.layer.cornerRadius = 4
        }

        for lb in [_2x1x1, _2x1x2, _2x1x3, _2x1x4, _2x1x5, _2x1x6, _2x1x7, _2x1x8, _2x1x9, _2x1x10,
         _2x2x1, _2x2x2, _2x2x3, _2x2x4, _2x2x5, _2x2x6, _2x2x7, _2x2x8, _2x2x9, _2x2x10,
         _2x3x1, _2x3x2, _2x3x3, _2x3x4, _2x3x5, _2x3x6, _2x3x7, _2x3x8, _2x3x9, _2x3x10] {
            lb?.layer.masksToBounds = true
            lb?.layer.cornerRadius = 4
        }
        
        for lb in [answer1_1, answer1_2, answer1_3,
                   answer2_1, answer2_2, answer2_3,
                   answer3_1, answer3_2, answer3_3] {
            lb?.layer.masksToBounds = true
            lb?.layer.cornerRadius = 4
        }
    }

    @IBAction func click1Button(_ sender: Any) {
        discharge3_1Button.tintColor = #colorLiteral(red: 0.9195505977, green: 0.8001386523, blue: 0.4673896432, alpha: 1)
        discharge3_2Button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        discharge3_3Button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        
        for bt in [_2x1, _2x2, _2x3, _2x4, _2x5, _2x6, _2x7, _2x8, _2x9, _2x10,
                   _3x1, _3x2, _3x3, _3x4, _3x5, _3x6, _3x7, _3x8, _3x9, _3x10] {
            bt?.isUserInteractionEnabled = false
            bt?.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        }
        
        for bt in [_1x1, _1x2, _1x3, _1x4, _1x5, _1x6, _1x7, _1x8, _1x9, _1x10] {
            bt?.isUserInteractionEnabled = true
            bt?.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
                   
    @IBAction func click2Button(_ sender: Any) {
        discharge3_2Button.tintColor = #colorLiteral(red: 0.9195505977, green: 0.8001386523, blue: 0.4673896432, alpha: 1)
        discharge3_1Button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        discharge3_3Button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        
        for bt in [_1x1, _1x2, _1x3, _1x4, _1x5, _1x6, _1x7, _1x8, _1x9, _1x10,
                   _3x1, _3x2, _3x3, _3x4, _3x5, _3x6, _3x7, _3x8, _3x9, _3x10] {
            bt?.isUserInteractionEnabled = false
            bt?.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        }
        
        for bt in [_2x1, _2x2, _2x3, _2x4, _2x5, _2x6, _2x7, _2x8, _2x9, _2x10] {
            bt?.isUserInteractionEnabled = true
            bt?.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    @IBAction func click3Button(_ sender: Any) {
        discharge3_3Button.tintColor = #colorLiteral(red: 0.9195505977, green: 0.8001386523, blue: 0.4673896432, alpha: 1)
        discharge3_1Button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        discharge3_2Button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        
        for bt in [_1x1, _1x2, _1x3, _1x4, _1x5, _1x6, _1x7, _1x8, _1x9, _1x10,
                   _2x1, _2x2, _2x3, _2x4, _2x5, _2x6, _2x7, _2x8, _2x9, _2x10] {
            bt?.isUserInteractionEnabled = false
            bt?.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        }
        
        for bt in [_3x1, _3x2, _3x3, _3x4, _3x5, _3x6, _3x7, _3x8, _3x9, _3x10] {
            bt?.isUserInteractionEnabled = true
            bt?.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    @IBAction func generate(_ sender: Any) {
        alorithmMethod.generateAlgorithmMethod(start: 0,   end: 10,   filename: "alg1.txt")
        alorithmMethod.generateAlgorithmMethod(start: 10,  end: 100,  filename: "alg10.txt")
        alorithmMethod.generateAlgorithmMethod(start: 100, end: 1000, filename: "alg100.txt")
        
        let answer1 = round(alorithmMethod.getCriteria(filename: "alg1.txt",   elMin: 0,   elMax: 10) * 1000) / 1000
        let answer2 = round(alorithmMethod.getCriteria(filename: "alg10.txt",   elMin: 10,   elMax: 100) * 1000) / 1000
        let answer3 = round(alorithmMethod.getCriteria(filename: "alg100.txt",   elMin: 100,   elMax: 1000) * 1000) / 1000
        answer1_1.text = "\(answer1)"
        answer1_2.text = "\(answer2)"
        answer1_3.text = "\(answer3)"
        
        fillTextFileds()
    }
    
    func fillTextFileds() {
        _1x1x1.text = "\(alorithmMethod.nums_10_1[0])"
        _1x1x2.text = "\(alorithmMethod.nums_10_1[1])"
        _1x1x3.text = "\(alorithmMethod.nums_10_1[2])"
        _1x1x4.text = "\(alorithmMethod.nums_10_1[3])"
        _1x1x5.text = "\(alorithmMethod.nums_10_1[4])"
        _1x1x6.text = "\(alorithmMethod.nums_10_1[5])"
        _1x1x7.text = "\(alorithmMethod.nums_10_1[6])"
        _1x1x8.text = "\(alorithmMethod.nums_10_1[7])"
        _1x1x9.text = "\(alorithmMethod.nums_10_1[8])"
        _1x1x10.text = "\(alorithmMethod.nums_10_1[9])"
        
        _1x2x1.text = "\(alorithmMethod.nums_100_1[0])"
        _1x2x2.text = "\(alorithmMethod.nums_100_1[1])"
        _1x2x3.text = "\(alorithmMethod.nums_100_1[2])"
        _1x2x4.text = "\(alorithmMethod.nums_100_1[3])"
        _1x2x5.text = "\(alorithmMethod.nums_100_1[4])"
        _1x2x6.text = "\(alorithmMethod.nums_100_1[5])"
        _1x2x7.text = "\(alorithmMethod.nums_100_1[6])"
        _1x2x8.text = "\(alorithmMethod.nums_100_1[7])"
        _1x2x9.text = "\(alorithmMethod.nums_100_1[8])"
        _1x2x10.text = "\(alorithmMethod.nums_100_1[9])"
        
        _1x3x1.text = "\(alorithmMethod.nums_1000_1[0])"
        _1x3x2.text = "\(alorithmMethod.nums_1000_1[1])"
        _1x3x3.text = "\(alorithmMethod.nums_1000_1[2])"
        _1x3x4.text = "\(alorithmMethod.nums_1000_1[3])"
        _1x3x5.text = "\(alorithmMethod.nums_1000_1[4])"
        _1x3x6.text = "\(alorithmMethod.nums_1000_1[5])"
        _1x3x7.text = "\(alorithmMethod.nums_1000_1[6])"
        _1x3x8.text = "\(alorithmMethod.nums_1000_1[7])"
        _1x3x9.text = "\(alorithmMethod.nums_1000_1[8])"
        _1x3x10.text = "\(alorithmMethod.nums_1000_1[9])"
    }
    
    @IBAction func calculate(_ sender: Any) {
        
        if discharge3_1Button.tintColor == #colorLiteral(red: 0.9195505977, green: 0.8001386523, blue: 0.4673896432, alpha: 1) {
            manual(textFields: [_1x1, _1x2, _1x3, _1x4, _1x5, _1x6, _1x7, _1x8, _1x9, _1x10],
                   answerTextField: answer3_1,
                   elMin: 0,
                   elMax: 10)
        }
        
        if discharge3_2Button.tintColor == #colorLiteral(red: 0.9195505977, green: 0.8001386523, blue: 0.4673896432, alpha: 1) {
            manual(textFields: [_2x1, _2x2, _2x3, _2x4, _2x5, _2x6, _2x7, _2x8, _2x9, _2x10],
                   answerTextField: answer3_2,
                   elMin: 10,
                   elMax: 100)
        }
        
        if discharge3_3Button.tintColor == #colorLiteral(red: 0.9195505977, green: 0.8001386523, blue: 0.4673896432, alpha: 1) {
            manual(textFields: [_3x1, _3x2, _3x3, _3x4, _3x5, _3x6, _3x7, _3x8, _3x9, _3x10],
                   answerTextField: answer3_3,
                   elMin: 100,
                   elMax: 1000)
        }
    }
    
    private func manual(textFields: [UITextField], answerTextField: UILabel, elMin: Int, elMax: Int) {
        var text = [String]()
        
        for tf in textFields {
            text.append(tf.text!)
        }
        
        helpers.write_to_file(text: text.joined(separator: "\n"), filename: "manual.txt")
        let answer = round(alorithmMethod.getCriteria(filename: "manual.txt", elMin: elMin, elMax: elMax) * 1000) / 1000
        answerTextField.text = "\(answer)"
    }
}

