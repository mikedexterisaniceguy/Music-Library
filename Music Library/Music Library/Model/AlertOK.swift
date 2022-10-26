//
//  AlertOK.swift
//  Music Library
//
//  Created by 123 on 26.10.22.
//

import UIKit

extension UIViewController {
    
    func alertOk(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(ok)
        
        present(alert, animated: true, completion: nil)
    }
}
