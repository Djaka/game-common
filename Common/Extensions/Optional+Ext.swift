//
//  Optional.swift
//  Common
//
//  Created by Djaka Permana on 23/07/23.
//

import UIKit

extension Optional where Wrapped == Double {
    
  public func getRatingImage() -> UIImage? {
    guard let rating = self else {
        return UIImage(systemName: "star.fill")
    }
    
    switch rating {
    case 4.0 ... 5.0:
        return UIImage(systemName: "star.fill")
    case 2.5 ... 3.9:
        return UIImage(systemName: "star.leadinghalf.filled")
    default:
        return UIImage(systemName: "star")
    }
  }
}
