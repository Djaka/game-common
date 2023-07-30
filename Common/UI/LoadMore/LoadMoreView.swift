//
//  LoadMoreView.swift
//  GameInfoAdvance
//
//  Created by Djaka Permana on 05/07/23.
//

import UIKit

public class LoadMoreView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var loading: UIActivityIndicatorView!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)

        loadContentView()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        loadContentView()
    }
    
    private func loadContentView() {
        #if SWIFT_PACKAGE
        let nib = UINib(nibName: "LoadMoreView", bundle: Bundle.module)
        #else
        UIView.loadFromNib(nibClass: LoadMoreView.self, owner: self)
        #endif
        
        guard let contentView = contentView else {
            return
        }

        contentView.frame = self.bounds
        addSubview(contentView)
    }
}
