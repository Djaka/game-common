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
        
//        UIView.loadFromNib(nibClass: LoadMoreView.self, owner: self)
        
        let nib = UINib(nibName: "LoadMoreView", bundle: .module)
        nib.instantiate(withOwner: self, options: nil)
        
        guard let contentView = contentView else {
            return
        }

        contentView.frame = self.bounds
        addSubview(contentView)
    }
}
