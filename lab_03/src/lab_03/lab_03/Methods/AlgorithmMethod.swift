//
//  Model.swift
//  lab_03
//
//  Created by Polina Egorova on 01.11.2023.
//

import Foundation
import SwiftyStats

class CongruentMethod {
    private let a: Int = 1103515245
    private let b: Int = 12345
    private let n: Int = Int(pow(Double(2), 31))
    private var r: Int
    
    init(seed: Int) {
        self.r = seed
    }
    
    func getNum(start: Int, end: Int) -> Int {
        r = (a * r + b) % n
        return r % (end - start) + start
    }
}

class AlgorithmMethod {
    let helpers = Helpers()
    
    var nums_10_1   = [Int]()
    var nums_100_1  = [Int]()
    var nums_1000_1 = [Int]()
    
    func getCriteria(filename: String, elMin: Int, elMax: Int) -> Double {
        let array = helpers.read_from_file(filename: filename).components(separatedBy: "\n")
        print("aaa", array)
        var nums = [Int]()
        for el in array { nums.append(Int(el)!) }
        var y = 0.0
        let p = 1.0 / Double(elMax - elMin)
        
        for i in elMin..<elMax {
            let count = nums.filter{ $0 == i }.count
            y += pow(Double(count), 2) / p
        }
        
        y = y / Double(nums.count) - Double(nums.count)
        
        get_10_nums(nums: nums)
        
        do {
            let res = try cdfChiSquareDist(chi: y, degreesOfFreedom: Double(elMax - elMin - 1))
            return res
        } catch {
            return 0.0
        }
        
        return 0.0
    }
    
    func generateAlgorithmMethod(start: Int, end: Int, filename: String) {
        var arr = [String]()
        let algorithmMethod = CongruentMethod(seed: Int.random(in: 0...100));

        for _ in 0..<1000 {
            let num = algorithmMethod.getNum(start: start, end: end)
            arr.append("\(num)")
        }

        helpers.write_to_file(text: arr.joined(separator: "\n"), filename: filename)
    }
}

extension AlgorithmMethod {
    private func get_10_nums(nums: [Int]) {
        if nums[0] < 10 {
            nums_10_1 = Array(nums[0..<10])
        }
        
        if nums[0] >= 10 && nums[0] < 100 {
            nums_100_1 = Array(nums[0..<10])
        }
        
        if nums[0] >= 100 && nums[0] < 1000 {
            nums_1000_1 = Array(nums[0..<10])
        }
    }
}
