//
//  ViewController.swift
//  lab_04
//
//  Created by Polina Egorova on 26.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var aField: UITextField!
    @IBOutlet weak var bField: UITextField!
    @IBOutlet weak var sigmaField: UITextField!
    @IBOutlet weak var muField: UITextField!
    @IBOutlet weak var percentField: UITextField!
    
    @IBOutlet weak var stepAnswer: UILabel!
    @IBOutlet weak var eventAnswer: UILabel!
    
    let total_task = 1000
    let step = 0.1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculate(_ sender: Any) {
        let a = Double(aField.text ?? "0")!
        let b = Double(bField.text ?? "0")!
        let sigma = Double(sigmaField.text ?? "0.0")!
        let mu = Double(muField.text ?? "0.0")!
        let percent = Int(percentField.text ?? "0")!
        
        print(a, b, mu, sigma, percent)
        let process = Process(a: a, b: b, mu: mu, sigma: sigma, total_tasks: total_task, repeat_percentage: percent, step: step)
        let (eventAns, stepAns) = process.getAnswers()
        
        stepAnswer.text = "Пошаговый метод | длина очереди = \(stepAns)"
        eventAnswer.text = "Событийный метод | длина очереди = \(eventAns)"
    }
}

