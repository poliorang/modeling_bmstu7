//
//  Helpers.swift
//  lab_03
//
//  Created by Polina Egorova on 04.11.2023.
//

import Foundation

class Helpers {
    func write_to_file(text: String, filename: String) {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {

            let path = dir.appendingPathComponent(filename)

            do {
                try text.write(to: path, atomically: false, encoding: String.Encoding.utf8)
            }
            catch { return }
        }
    }
    
    func read_from_file(filename: String) -> String {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            print(dir)
            let path = dir.appendingPathComponent(filename)
            
            do {
                let text = try String(contentsOf: path, encoding: String.Encoding.utf8)
                return text
            }
            catch { return "" }
        }
        
        return ""
    }
}
