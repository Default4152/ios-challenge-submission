//
//  RoundedImageView.swift
//  Tocca-Challenge
//
//  Created by Conner on 7/15/19.
//  Copyright © 2019 Conner. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {
    override func layoutSubviews() {
        super.layoutSubviews()
        let radius = frame.width / 2.0
        layer.cornerRadius = radius
        clipsToBounds = true
    }
}
