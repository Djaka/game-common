//
//  UIStackView+Ext.swift
//  Common
//
//  Created by Djaka Permana on 23/07/23.
//

import UIKit

extension UIStackView {
    
    public func removeFully(view: UIView) {
        removeArrangedSubview(view)
        view.removeFromSuperview()
    }
    
    public func removeFullyAllArrangedSubviews() {
        arrangedSubviews.forEach { (view) in
            removeFully(view: view)
        }
    }
}
