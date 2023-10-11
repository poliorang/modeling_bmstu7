//
//  ViewController.swift
//  lab01
//
//  Created by Polina Egorova on 10.10.2023.
//

import UIKit
import DGCharts

class ViewController: UIViewController {
    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var aTextField: UITextField!
    @IBOutlet weak var bTextField: UITextField!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var typeControl: UISegmentedControl!
    
    var a: Double = -5
    var b: Double = 5
    
    private var arrayX = [Double]()
    private var arrayF = [Double]()
    private var arrayf = [Double]()
    
    let distribution = Distribution()
    private let chart = LineChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupChart()
        setupDataSet()
        
        view.addSubview(chart)
    }
    
    @IBAction func getChartButton(_ sender: Any) {
        view.endEditing(true)
        if let textA = aTextField.text,
            let textB = bTextField.text {
            a = Double(textA) ?? 0
            b = Double(textB) ?? 0
        }
        setupDataSet()
    }
    
    
    @IBAction func control(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == DistributionType.uniform.rawValue {
            aLabel.text = "a"
            bLabel.text = "b"
            chart.alpha = 0.5
        }
        
        if sender.selectedSegmentIndex == DistributionType.normal.rawValue {
            aLabel.text = "μ"
            bLabel.text = "σ"
            chart.alpha = 0.5
        }
    }

    private func setupChart() {
        let width = view.frame.width * 4/5
        chart.frame = CGRect(x: view.frame.width / 2 - width / 2, y: view.frame.height / 2 - width / 2, width: width, height: width)
        chart.backgroundColor = #colorLiteral(red: 0.9195505977, green: 0.8001386523, blue: 0.4673896432, alpha: 1)
        chart.borderLineWidth = 3
    }
    
    private func setupDataSet() {
        var density = [ChartDataEntry]()
        var distrib = [ChartDataEntry]()
        
        if typeControl.selectedSegmentIndex == DistributionType.uniform.rawValue {
            distribution.uniform(a: a, b: b, arrX: &arrayX, arrf: &arrayf, arrF: &arrayF)
            for i in 0..<arrayX.count {
                density.append(ChartDataEntry(x: arrayX[i], y: arrayf[i]))
                distrib.append(ChartDataEntry(x: arrayX[i], y: arrayF[i]))
            }
        }
        if typeControl.selectedSegmentIndex == DistributionType.normal.rawValue {
            distribution.normal(mu: a, sigma: b, arrX: &arrayX, arrf: &arrayf, arrF: &arrayF)
            for i in 0..<arrayX.count {
                density.append(ChartDataEntry(x: arrayX[i], y: arrayf[i]))
                distrib.append(ChartDataEntry(x: arrayX[i], y: arrayF[i]))
            }
        }
        
        let densityDataSet = LineChartDataSet(entries: density, label: "График функции плотности распределения")
        densityDataSet.setColor(UIColor.darkGray)
        densityDataSet.setCircleColor(UIColor.darkGray)
        densityDataSet.circleRadius = 1.5
        
        let distribDataSet = LineChartDataSet(entries: distrib, label: "График функции распределения")
        distribDataSet.setColor(UIColor.brown)
        distribDataSet.setCircleColor(UIColor.brown)
        distribDataSet.circleRadius = 1.5
        
        let data = LineChartData(dataSets: [distribDataSet, densityDataSet])
        
        chart.data = data
        chart.animate(xAxisDuration: 2.5)
        chart.alpha = 1
        chart.setNeedsLayout()
    }
    
}

extension ViewController {
    enum DistributionType: Int {
        case uniform = 0
        case normal = 1
    }
}
