//
//  AlertManager.swift
//  lab_02
//
//  Created by Polina Egorova on 24.10.2023.
//

import Foundation
import UIKit

final class AlertManager {
    static let shared = AlertManager()
    
    init() { }
    
    func showAlert(presentTo controller: UIViewController, title: String?, message: String?) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel)
        alertController.addAction(okAction)
        controller.present(alertController, animated: true, completion: nil)
    }
}
