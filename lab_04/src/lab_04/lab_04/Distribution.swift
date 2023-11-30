//
//  Distribution.swift
//  lab01
//
//  Created by Polina Egorova on 10.10.2023.
//

import Foundation

class EvenDistribution {
    let a: Double
    let b: Double
    
    init(a: Double, b: Double) {
        self.a = a
        self.b = b
    }
    
    func generate() -> Double {
        return a + (b - a) * Double.random(in: 0..<1)
    }
}

class NormalDistribution {
    let mu: Double
    let sigma: Double
    
    init(mu: Double, sigma: Double) {
        self.mu = mu
        self.sigma = sigma
    }
    
    func generate() -> Double {
        return Double.random(in: 0..<1) * sigma + mu
    }
}
