//
//  ViewController.swift
//  lab_02
//
//  Created by Polina Egorova on 24.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var _1x8: UITextField!
    @IBOutlet weak var _1x7: UITextField!
    @IBOutlet weak var _1x10: UITextField!
    @IBOutlet weak var _1x9: UITextField!
    @IBOutlet weak var _1x6: UITextField!
    @IBOutlet weak var _1x5: UITextField!
    @IBOutlet weak var _1x4: UITextField!
    @IBOutlet weak var _1x3: UITextField!
    @IBOutlet weak var _1x2: UITextField!
    @IBOutlet weak var _1x1: UITextField!
    
    @IBOutlet weak var _2x1: UITextField!
    @IBOutlet weak var _2x10: UITextField!
    @IBOutlet weak var _2x9: UITextField!
    @IBOutlet weak var _2x8: UITextField!
    @IBOutlet weak var _2x7: UITextField!
    @IBOutlet weak var _2x6: UITextField!
    @IBOutlet weak var _2x5: UITextField!
    @IBOutlet weak var _2x4: UITextField!
    @IBOutlet weak var _2x3: UITextField!
    @IBOutlet weak var _2x2: UITextField!
    
    @IBOutlet weak var _3x1: UITextField!
    @IBOutlet weak var _3x2: UITextField!
    @IBOutlet weak var _3x3: UITextField!
    @IBOutlet weak var _3x4: UITextField!
    @IBOutlet weak var _3x5: UITextField!
    @IBOutlet weak var _3x6: UITextField!
    @IBOutlet weak var _3x7: UITextField!
    @IBOutlet weak var _3x8: UITextField!
    @IBOutlet weak var _3x9: UITextField!
    @IBOutlet weak var _3x10: UITextField!
    
    @IBOutlet weak var _4x1: UITextField!
    @IBOutlet weak var _4x2: UITextField!
    @IBOutlet weak var _4x3: UITextField!
    @IBOutlet weak var _4x4: UITextField!
    @IBOutlet weak var _4x5: UITextField!
    @IBOutlet weak var _4x6: UITextField!
    @IBOutlet weak var _4x7: UITextField!
    @IBOutlet weak var _4x8: UITextField!
    @IBOutlet weak var _4x9: UITextField!
    @IBOutlet weak var _4x10: UITextField!
    
    @IBOutlet weak var _5x1: UITextField!
    @IBOutlet weak var _5x2: UITextField!
    @IBOutlet weak var _5x3: UITextField!
    @IBOutlet weak var _5x4: UITextField!
    @IBOutlet weak var _5x5: UITextField!
    @IBOutlet weak var _5x6: UITextField!
    @IBOutlet weak var _5x7: UITextField!
    @IBOutlet weak var _5x8: UITextField!
    @IBOutlet weak var _5x9: UITextField!
    @IBOutlet weak var _5x10: UITextField!
    
    @IBOutlet weak var _6x1: UITextField!
    @IBOutlet weak var _6x2: UITextField!
    @IBOutlet weak var _6x3: UITextField!
    @IBOutlet weak var _6x4: UITextField!
    @IBOutlet weak var _6x5: UITextField!
    @IBOutlet weak var _6x6: UITextField!
    @IBOutlet weak var _6x7: UITextField!
    @IBOutlet weak var _6x8: UITextField!
    @IBOutlet weak var _6x9: UITextField!
    @IBOutlet weak var _6x10: UITextField!
    
    @IBOutlet weak var _7x1: UITextField!
    @IBOutlet weak var _7x2: UITextField!
    @IBOutlet weak var _7x3: UITextField!
    @IBOutlet weak var _7x4: UITextField!
    @IBOutlet weak var _7x5: UITextField!
    @IBOutlet weak var _7x6: UITextField!
    @IBOutlet weak var _7x7: UITextField!
    @IBOutlet weak var _7x8: UITextField!
    @IBOutlet weak var _7x9: UITextField!
    @IBOutlet weak var _7x10: UITextField!
    
    @IBOutlet weak var _8x1: UITextField!
    @IBOutlet weak var _8x2: UITextField!
    @IBOutlet weak var _8x3: UITextField!
    @IBOutlet weak var _8x4: UITextField!
    @IBOutlet weak var _8x5: UITextField!
    @IBOutlet weak var _8x6: UITextField!
    @IBOutlet weak var _8x7: UITextField!
    @IBOutlet weak var _8x8: UITextField!
    @IBOutlet weak var _8x10: UITextField!
    @IBOutlet weak var _8x9: UITextField!
    
    @IBOutlet weak var _9x1: UITextField!
    @IBOutlet weak var _9x2: UITextField!
    @IBOutlet weak var _9x3: UITextField!
    @IBOutlet weak var _9x4: UITextField!
    @IBOutlet weak var _9x5: UITextField!
    @IBOutlet weak var _9x6: UITextField!
    @IBOutlet weak var _9x7: UITextField!
    @IBOutlet weak var _9x8: UITextField!
    @IBOutlet weak var _9x9: UITextField!
    @IBOutlet weak var _9x10: UITextField!
    
    @IBOutlet weak var _10x1: UITextField!
    @IBOutlet weak var _10x2: UITextField!
    @IBOutlet weak var _10x3: UITextField!
    @IBOutlet weak var _10x4: UITextField!
    @IBOutlet weak var _10x5: UITextField!
    @IBOutlet weak var _10x6: UITextField!
    @IBOutlet weak var _10x7: UITextField!
    @IBOutlet weak var _10x8: UITextField!
    @IBOutlet weak var _10x9: UITextField!
    @IBOutlet weak var _10x10: UITextField!
    
    @IBOutlet weak var countTextField: UITextField!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var chartButton: UIButton!
    @IBOutlet weak var resetFields: UIButton!
    
    let alertManager = AlertManager.shared
    
    let nums = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    lazy var line1 = [_1x1, _1x2, _1x3, _1x4, _1x5, _1x6, _1x7, _1x8, _1x9, _1x10]
    lazy var line2 = [_2x1, _2x2, _2x3, _2x4, _2x5, _2x6, _2x7, _2x8, _2x9, _2x10]
    lazy var line3 = [_3x1, _3x2, _3x3, _3x4, _3x5, _3x6, _3x7, _3x8, _3x9, _3x10]
    lazy var line4 = [_4x1, _4x2, _4x3, _4x4, _4x5, _4x6, _4x7, _4x8, _4x9, _4x10]
    lazy var line5 = [_5x1, _5x2, _5x3, _5x4, _5x5, _5x6, _5x7, _5x8, _5x9, _5x10]
    lazy var line6 = [_6x1, _6x2, _6x3, _6x4, _6x5, _6x6, _6x7, _6x8, _6x9, _6x10]
    lazy var line7 = [_7x1, _7x2, _7x3, _7x4, _7x5, _7x6, _7x7, _7x8, _7x9, _7x10]
    lazy var line8 = [_8x1, _8x2, _8x3, _8x4, _8x5, _8x6, _8x7, _8x8, _8x9, _8x10]
    lazy var line9 = [_9x1, _9x2, _9x3, _9x4, _9x5, _9x6, _9x7, _9x8, _9x9, _9x10]
    lazy var line10 = [_10x1, _10x2, _10x3, _10x4, _10x5, _10x6, _10x7, _10x8, _10x9, _10x10]
    lazy var textFieldMatrix = [line1, line2, line3, line4, line5, line6, line7, line8, line9, line10]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first as? UITouch {
            view.endEditing(true)
        }
    }
    
    @IBAction func getChart(_ sender: Any) {
        guard let countText = countTextField?.text else {
            alertManager.showAlert(presentTo: self, title: "Внимание",
                                   message: "Некорректное число состояний")
            return
        }
        
        if !nums.contains(countText) {
            alertManager.showAlert(presentTo: self, title: "Внимание",
                                   message: "Некорректное число состояний")
        }
        
        let count = Int(countText) ?? 0
        
        let chartViewController = ChartViewController()
        chartViewController.nStates = count
        chartViewController.matrix = getNumLineFromMatrix(textFields: textFieldMatrix, count: count)
        self.present(chartViewController, animated: true)
    }
    

    private func getNumLineFromMatrix(textFields: [[UITextField?]], count: Int) -> [[Double]] {
        var numMatrix = Array(repeating: Array(repeating: 0.0, count: count), count: count)
        
        for i in 0..<count {
            for j in 0..<count {
                numMatrix[i][j] = getMatrixNum(textFields[i][j]!)
            }
        }
        
        return numMatrix
    }
    
    private func getMatrixNum(_ textField: UITextField) -> Double {
        return Double(textField.text ?? "0") ?? 0
    }
    
    @IBAction func resetP(_ sender: Any) {
        for i in 0..<10 {
            for j in 0..<10 {
                textFieldMatrix[i][j]!.text = "0.0"
            }
        }
    }
}

