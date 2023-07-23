//
//  String+Ext.swift
//  Common
//
//  Created by Djaka Permana on 23/07/23.
//

import UIKit

extension String {
    public var htmlToAttributedString: NSAttributedString? {
        guard let data = data(using: .utf8) else { return nil }
        do {
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding: String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch {
            return nil
        }
    }
    
    public var htmlToString: String {
        return htmlToAttributedString?.string ?? ""
    }
}
