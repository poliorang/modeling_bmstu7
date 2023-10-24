//
//  Funcs.swift
//  lab_02
//
//  Created by Polina Egorova on 24.10.2023.
//

import Foundation
import DGCharts

class Model {
    var nStates = 0
    var matrix = [[Double]]()
    var pArr = [Double]()
    var tStableArr = [Double]()
    let step = 0.01
    let stabEpsilon = 1e-5
    let zeroEpsilon = 1e-8
    
    var chartsData = [[ChartDataEntry]]()
    var stabPoints = [ChartDataEntry]()
    
    init(nStates: Int, matrix: [[Double]]) {
        self.nStates = nStates
        self.matrix = matrix
        self.pArr = Array(repeating: 0.0, count: nStates)
        self.tStableArr = Array(repeating: 0.0, count: nStates)
        self.chartsData = Array(repeating: [ChartDataEntry](), count: nStates)
        self.stabPoints = Array(repeating: ChartDataEntry(), count: nStates)
        
        pArr[0] = 1.0
    }
    
    func emulate() {
        var deltaProbArray = Array(repeating: 0.0, count: nStates)
        deltaProbArray[0] = 2 * stabEpsilon

        var currentT: Double = step
        while !isModelStabelized(deltaProbArray) {
            setChartCordinates(currentT, pArr)

            deltaProbArray = Array(repeating: 0.0, count: nStates)
            var PderivativeArr = Array(repeating: 0.0, count: nStates)

            for i in 0..<nStates {
                for j in 0..<nStates {
                    let probDensityToAdd = matrix[j][i] * pArr[j] - matrix[i][j] * pArr[i]
                    PderivativeArr[i] += probDensityToAdd
                    deltaProbArray[i] += probDensityToAdd * step
                }
                pArr[i] += deltaProbArray[i]
            }

            isSomeStatesStabelized(currentT, PderivativeArr)
            
            currentT += step
        }
        
        getStabPoints()
    }
    
    private func isModelStabelized(_ arr: [Double]) -> Bool {
        for i in 0..<arr.count {
            if arr[i] > zeroEpsilon { return false }
        }
        return true
    }
        
    private func setChartCordinates(_ currentT: Double, _ arr: [Double]) {
        for i in 0..<nStates {
            chartsData[i].append(ChartDataEntry(x: currentT, y: arr[i]))
        }
    }
    
    private func isSomeStatesStabelized(_ currentT: Double, _ klmArr: [Double]){
        for i in 0..<nStates {
            if abs(klmArr[i]) < stabEpsilon && tStableArr[i] == 0 {
                tStableArr[i] = currentT
            } else {
                if abs(klmArr[i]) > stabEpsilon && tStableArr[i] != 0 {
                    tStableArr[i] = 0
                }
            }
        }
    }
    
    private func getStabPoints() {
        for i in 0..<nStates {
            stabPoints[i] = ChartDataEntry(x: tStableArr[i], y: pArr[i])
        }
    }
    
}
