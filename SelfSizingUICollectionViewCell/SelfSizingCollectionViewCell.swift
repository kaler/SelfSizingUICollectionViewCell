//
//  SelfSizingCollectionViewCell.swift
//  SelfSizingUICollectionViewCell
//
//  Created by Parveen Kaler on 2018-01-15.
//  Copyright © 2018 Parveen Kaler. All rights reserved.
//

import UIKit

class SelfSizingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        setNeedsLayout()
        layoutIfNeeded()
        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
        var frame = layoutAttributes.frame
        frame.size.height = ceil(size.height)
        layoutAttributes.frame = frame
        return layoutAttributes
    }
}
