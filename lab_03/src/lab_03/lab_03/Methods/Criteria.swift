//
//  Criteria.swift
//  lab_03
//
//  Created by Polina Egorova on 06.11.2023.
//

import Foundation
import SwiftyStats

class Criteria {
    let helpers = Helpers()
    func getCriteria(filename: String, elMin: Int, elMax: Int) -> Double {
        let array = helpers.read_from_file(filename: filename).components(separatedBy: "\n")
        var nums = [Int]()
        for el in array { nums.append(Int(el)!) }
        var y = 0.0
        let p = 1.0 / Double(elMax - elMin)
        
        for i in elMin..<elMax {
            let count = nums.filter{ $0 == i }.count
            y += pow(Double(count), 2) / p
        }
        
        y = y / Double(nums.count) - Double(nums.count)
        
        
        do {
            let res = try cdfChiSquareDist(chi: y, degreesOfFreedom: Double(elMax - elMin - 1))
            return res
        } catch {
            return 0.0
        }
        
        return 0.0
    }
}
