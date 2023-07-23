//
//  UIViewController+Ext.swift
//  Common
//
//  Created by Djaka Permana on 23/07/23.
//

import UIKit

extension UIViewController {
    public func showAlert(title: String, message: String) {
        let alert = CommonAlert.alert(title: title, message: message)
        self.present(alert, animated: true)
    }
}
