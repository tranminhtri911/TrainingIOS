//
//  StrokeView.swift
//  Calculator
//
//  Created by Tran Tri on 3/1/18.
//  Copyright © 2018 Tran Tri. All rights reserved.
//

import UIKit

class StrokeView: UIView {
    
    override func draw(_ rect: CGRect) {
        var myBezier = UIBezierPath()
        myBezier.move(to: CGPoint(x: 0, y: 0))
        myBezier.addLine(to: CGPoint(x: 100, y: 0))
        myBezier.addLine(to: CGPoint(x: 50, y: 100))
        myBezier.close()
        UIColor.black.setStroke()
        myBezier.stroke(); <#code#>
    }

var view = StrokeView(frame: CGRect(0, 0, 100, 100))
view.backgroundColor = UIColor.whiteColor()

}
