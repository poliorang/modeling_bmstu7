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
    
    func generateAlgorithmMethod(filename: String, start: Int, end: Int) {
        var arr = [String]()
        var nums = [Int]()
        let algorithmMethod = CongruentMethod(seed: Int.random(in: 0...100));

        for _ in 0..<1000 {
            let num = algorithmMethod.getNum(start: start, end: end)
            nums.append(num)
            arr.append("\(num)")
        }
        get_10_nums(nums: nums)

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
