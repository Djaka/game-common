//
//  CommonAlert.swift
//  Common
//
//  Created by Djaka Permana on 23/07/23.
//

import UIKit

public final class CommonAlert {
    
    public static func alert(title: String, message: String) -> UIAlertController {
        
        let errorAlert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        errorAlert.addAction(action)
        
        return errorAlert
    }
}
