//
//  ChartViewController.swift
//  lab_02
//
//  Created by Polina Egorova on 24.10.2023.
//

import UIKit
import DGCharts

class ChartViewController: UIViewController {
    
    private var colorsGraph = [#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), #colorLiteral(red: 0.9889803529, green: 0.5989705324, blue: 0, alpha: 1), #colorLiteral(red: 1, green: 0.895024538, blue: 0.07467324287, alpha: 1), #colorLiteral(red: 0.5004678369, green: 0.8871871829, blue: 0.2491692603, alpha: 1), #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), #colorLiteral(red: 0.2527914047, green: 0.004545797594, blue: 0.9916997552, alpha: 1), #colorLiteral(red: 0.614228785, green: 0.3459221721, blue: 0.9440482259, alpha: 1), #colorLiteral(red: 0.3098039329, green: 0.2039215714, blue: 0.03921568766, alpha: 1), #colorLiteral(red: 0.9513089061, green: 0.6443685889, blue: 0.6540957689, alpha: 1), #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)]
    private let chart = LineChartView()
    private var dataSets = [ChartDataSet]()
    private var stabTimesLabel = UILabel()
    private var stabTimes = ""
    private var stationaryP = ""
    
    var nStates = 5
    var matrix = [[Double]]()
    private var model: Model?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.7590327263, green: 0.7507076263, blue: 0.8556483388, alpha: 1)
        model = Model(nStates: nStates, matrix: matrix)
        
        setupChart()
        setChartData()
        setupLabel()
    }
    
    private func setupChart() {
        let width = view.frame.width * 7/8
        chart.frame = CGRect(x: view.frame.width / 2 - width / 2, y: view.frame.height / 2 - width / 2, width: width, height: width)
        chart.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        chart.borderLineWidth = 3
        
        view.addSubview(chart)
    }
    
    private func setupLabel() {
        let width = view.frame.width * 7/8
        stabTimesLabel.frame = CGRect(x: 30, y: 40, width: width, height: 170)
        stabTimesLabel.textColor = .black
        stabTimesLabel.numberOfLines = 8
        stabTimesLabel.text = "Время стабилизации \n\(stabTimes)\n\nВероятности в стационарном режиме работы \n\(stationaryP)"
        
        view.addSubview(stabTimesLabel)
    }
    
    private func setChartData() {
        guard let model = model else { return }
        model.emulate()
        
        for i in 0..<nStates {
            let dataSet = LineChartDataSet(entries: model.chartsData[i], label: "\(i + 1)")
            dataSet.fillColor = colorsGraph[i]
            dataSet.setCircleColor(colorsGraph[i])
            dataSet.setColor(colorsGraph[i])
            dataSet.circleRadius = 1.5
            
            dataSets.append(dataSet)
        }
        
        for i in 0..<nStates {
            let point = model.stabPoints[i]
            let dataSetPoint = LineChartDataSet(entries: [point])
            dataSetPoint.label = nil
            dataSetPoint.fillColor = colorsGraph[i]
            dataSetPoint.setCircleColor(colorsGraph[i])
            dataSetPoint.setColor(colorsGraph[i])
            
            stabTimes += "\(round(point.x * 100) / 100)  "
            stationaryP += "\(round(point.y * 100) / 100)  "
            
            dataSets.append(dataSetPoint)
        }
        
        let lineCharts = LineChartData(dataSets: dataSets)
        chart.data = lineCharts
        chart.animate(xAxisDuration: 2.5)
        print(model.stabPoints)
    }
}
