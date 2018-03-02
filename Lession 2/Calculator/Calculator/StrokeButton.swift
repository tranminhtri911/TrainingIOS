//
//  StrokeButton.swift
//  Calculator
//
//  Created by Tran Tri on 3/1/18.
//  Copyright © 2018 Tran Tri. All rights reserved.
//

import UIKit

@IBDesignable
class StrokeButton: UIButton {
    @IBInspectable var borderColor: UIColor = UIColor.black {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 2.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        clipsToBounds = true
    }
}
