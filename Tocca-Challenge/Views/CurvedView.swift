//
//  CurvedView.swift
//  Tocca-Challenge
//
//  Created by Conner on 7/15/19.
//  Copyright © 2019 Conner. All rights reserved.
//

import UIKit

class CurvedView: UIView {
    override func draw(_ rect: CGRect) {
        let bezier = UIBezierPath()
        bezier.move(to: CGPoint(x: 0, y: 0)) // Start at top left of UIView
        bezier.addQuadCurve(to: CGPoint(x: rect.width, y: 0), controlPoint: CGPoint(x: rect.width / 2, y: rect.height / 1.5)) // Draw curve
        bezier.close() // End draw
        #colorLiteral(red: 0.1507650614, green: 0.3526057601, blue: 0.8449645638, alpha: 1).setFill() // Set UIView background
        bezier.fill() // Set bezier
    }
}
