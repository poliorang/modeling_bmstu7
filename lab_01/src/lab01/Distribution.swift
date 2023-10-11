//
//  Distribution.swift
//  lab01
//
//  Created by Polina Egorova on 10.10.2023.
//

import Foundation

class Distribution {
    func uniform(a: Double, b: Double, arrX: inout [Double], arrf: inout [Double], arrF: inout [Double]) {
        let d = b - a
        let step = d / 500
        var x = a - d / 3
        
        arrX = [Double](repeating: 0, count: Int(5 * d / (3 * step)) + 1)
        arrf = [Double](repeating: 0, count: Int(5 * d / (3 * step)) + 1)
        arrF = [Double](repeating: 0, count: Int(5 * d / (3 * step)) + 1)
        
        if a >= b { return }
        
        for i in 0..<arrX.count {
            arrX[i] = round(x * 1000) / 1000
            arrf[i] = uniformDensity(a: a, b: b, x: x)
            arrF[i] = uniformDistribution(a: a, b: b, x: x)
            x += step
        }
    }

    private func uniformDensity(a: Double, b: Double, x: Double) -> Double {
        return (a <= x && x <= b) ? 1 / (b - a) : 0
    }

    private func uniformDistribution(a: Double, b: Double, x: Double) -> Double {
        if x < a { return 0 }
        if x > b { return 1 }
        
        return (x - a) / (b - a)
    }
    
    func normal(mu: Double, sigma: Double, arrX: inout [Double], arrf: inout [Double], arrF: inout [Double]) {
        let a = -35.0
        let b = 35.0
        let step = 1e-2
        var x = a
        
        arrX = [Double](repeating: 0, count: Int((b - a) / step) + 1)
        arrf = [Double](repeating: 0, count: Int((b - a) / step) + 1)
        arrF = [Double](repeating: 0, count: Int((b - a) / step) + 1)
        
        for i in 0..<arrX.count {
            arrX[i] = round(x * 1000) / 1000
            arrf[i] = normalDensity(mu: mu, sigma: sigma, x: x)
            arrF[i] = normalDistribution(mu: mu, sigma: sigma, x: x)
            x += step
        }
    }

    private func normalDensity(mu: Double, sigma: Double, x: Double) -> Double {
        let pi = 3.14
        
        return 1 / (sigma * sqrt(2 * pi)) * exp(-pow(x - mu, 2) / (2 * sigma * sigma))
    }

    private func normalDistribution(mu: Double, sigma: Double, x: Double) -> Double {
        return 0.5 * (1 + erf((x - mu) / (sigma * sqrt(2))))
    }
}
