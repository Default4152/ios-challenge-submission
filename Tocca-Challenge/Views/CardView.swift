//
//  CardView.swift
//  Tocca-Challenge
//
//  Created by Conner on 7/15/19.
//  Copyright © 2019 Conner. All rights reserved.
//

import UIKit

class CardView: UIView {
    // MARK: - Properties
    
    let userImageContainerView = UIView()
    let infoStackView = UIStackView()
    let overallStackView = UIStackView()
    
    let userImageView: RoundedImageView = {
        let iv = RoundedImageView(image: UIImage(named: "conner"))
        return iv
    }()
    
    let userFullNameLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Conner Alegre"
        lbl.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        lbl.minimumScaleFactor = 0.5
        lbl.textAlignment = .center
        return lbl
    }()
    
    let userDetailLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "iOS Engineer"
        lbl.textColor = .darkGray
        lbl.font = UIFont.systemFont(ofSize: 11, weight: .light)
        lbl.textAlignment = .center
        return lbl
    }()
    
    let userQrImageView: UIImageView = {
        let iv = UIImageView(image: UIImage(named: "qr_code"))
        iv.contentMode = ContentMode.scaleAspectFit
        return iv
    }()
    
    // MARK: - Fileprivate
    
    fileprivate func setupView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        layer.cornerRadius = 12
        clipsToBounds = true
    }
    
    fileprivate func setupUserDetailSection() {
        [userImageContainerView, userFullNameLabel, userDetailLabel].forEach {
            infoStackView.addArrangedSubview($0)
        }
        infoStackView.axis = .vertical
        infoStackView.spacing = 2
        userImageContainerView.addSubview(userImageView)
        userImageView.centerInSuperview()
        userFullNameLabel.constrainHeight(constant: 25)
        userDetailLabel.constrainHeight(constant: 15)
    }
    
    fileprivate func setupOverallStackView() {
        overallStackView.addArrangedSubview(infoStackView)
        overallStackView.addArrangedSubview(userQrImageView)
        overallStackView.axis = .vertical
        addSubview(overallStackView)
        overallStackView.fillSuperview(padding: .init(top: 16, left: 16, bottom: 12, right: 16))
        
        overallStackView.spacing = 12
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setupUserDetailSection()
        setupOverallStackView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Used to ensure constraint code isn't running more than once
    private var layoutSubviewsCounter = 0
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if layoutSubviewsCounter == 0 {
            userImageView.constrainHeight(constant: frame.height * 0.25)
            userImageView.constrainWidth(constant: frame.height * 0.25)
            userImageContainerView.constrainHeight(constant: frame.height * 0.25)
            layoutSubviewsCounter += 1
        }
    }
}
