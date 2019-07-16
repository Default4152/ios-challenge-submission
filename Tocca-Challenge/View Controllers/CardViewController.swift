//
//  CardViewController.swift
//  Tocca-Challenge
//
//  Created by Conner on 7/15/19.
//  Copyright © 2019 Conner. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {
    // MARK: - Properties
    
    let cardView = CardView()
    let curvedView = CurvedView()
    let scanButtonContainerView = UIView()
    let shareButtonContainerView = UIView()
    let buttonStackView = UIStackView()
    let buttonLabelStackView = UIStackView()
    
    let scanButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "plus_icon"), for: .normal)
        return button
    }()
    
    let shareButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "share_icon"), for: .normal)
        return button
    }()
    
    let myCardLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        lbl.text = "My Card"
        lbl.textColor = .white
        lbl.textAlignment = .center
        return lbl
    }()
    
    let instructionLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 10, weight: .light)
        lbl.text = "Point other persons phone camera to scan QR Code"
        lbl.textColor = .white
        lbl.textAlignment = .center
        lbl.numberOfLines = 2
        return lbl
    }()
    
    let scanLabel: UILabel = {
        let label = UILabel()
        label.text = "SCAN QR/BC"
        return label
    }()
    
    let shareLabel: UILabel = {
        let label = UILabel()
        label.text = "SHARE"
        return label
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = #colorLiteral(red: 0.1507650614, green: 0.3526057601, blue: 0.8449645638, alpha: 1)
        
        setupCardLabel()
        setupCardView()
        setupCurvedView()
        
        // Setup buttons after curved view as the buttons depend on curved view position
        setupButtons()
        setupButtonLabels()
        setupInstructionLabel()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        scanButton.layer.cornerRadius = scanButton.frame.width / 2
        shareButton.layer.cornerRadius = shareButton.frame.width / 2
    }
    
    // MARK: - Fileprivate
    
    fileprivate func setupInstructionLabel() {
        view.addSubview(instructionLabel)
        instructionLabel.constrainHeight(constant: 30)
        instructionLabel.anchor(
            top: cardView.bottomAnchor,
            leading: cardView.leadingAnchor,
            bottom: nil,
            trailing: cardView.trailingAnchor,
            padding: .init(top: 4, left: 0, bottom: 0, right: 0)
        )
        instructionLabel.bottomAnchor.constraint(equalTo: buttonLabelStackView.topAnchor, constant: -40).isActive = true
    }
    
    fileprivate func setupCardView() {
        view.addSubview(cardView)
        cardView.anchor(
            top: nil,
            leading: view.leadingAnchor,
            bottom: nil,
            trailing: view.trailingAnchor,
            padding: .init(top: 0, left: 65, bottom: 0, right: 65)
        )
        cardView.centerXInSuperview()
        cardView.heightAnchor.constraint(lessThanOrEqualToConstant: view.frame.height * 0.6).isActive = true
        cardView.topAnchor.constraint(equalTo: myCardLabel.bottomAnchor, constant: 20).isActive = true
    }
    
    fileprivate func setupCardLabel() {
        view.addSubview(myCardLabel)
        myCardLabel.constrainHeight(constant: 30)
        myCardLabel.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            leading: view.leadingAnchor,
            bottom: nil,
            trailing: view.trailingAnchor,
            padding: .init(top: 20, left: 10, bottom: 0, right: 10)
        )
    }
    
    fileprivate func setupCurvedView() {
        view.addSubview(curvedView)
        
        curvedView.backgroundColor = #colorLiteral(red: 0.9622105956, green: 0.9724721313, blue: 0.997379601, alpha: 1)
        curvedView.constrainHeight(constant: view.frame.height * 0.12)
        curvedView.anchor(
            top: nil,
            leading: view.leadingAnchor,
            bottom: view.bottomAnchor,
            trailing: view.trailingAnchor
        )
    }
    
    fileprivate func setupButtons() {
        buttonStackView.addArrangedSubview(scanButtonContainerView)
        buttonStackView.addArrangedSubview(shareButtonContainerView)
        
        [scanButton, shareButton].forEach { button in
            button.backgroundColor = .white
            button.tintColor = #colorLiteral(red: 0.1507650614, green: 0.3526057601, blue: 0.8449645638, alpha: 1)
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOpacity = 0.1
            button.layer.shadowRadius = 8
            button.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        }
        
        scanButtonContainerView.addSubview(scanButton)
        scanButton.constrainHeight(constant: 62)
        scanButton.constrainWidth(constant: 62)
        scanButton.centerInSuperview()
        
        shareButtonContainerView.addSubview(shareButton)
        shareButton.constrainHeight(constant: 62)
        shareButton.constrainWidth(constant: 62)
        shareButton.centerInSuperview()
        
        buttonStackView.distribution = .fillEqually
        
        view.addSubview(buttonStackView)
        buttonStackView.constrainHeight(constant: 62)
        buttonStackView.anchor(
            top: nil,
            leading: view.leadingAnchor,
            bottom: nil,
            trailing: view.trailingAnchor,
            padding: .init(top: 0, left: 65, bottom: 0, right: 65)
        )
        buttonStackView.centerXAnchor.constraint(equalTo: curvedView.centerXAnchor).isActive = true
        buttonStackView.centerYAnchor.constraint(equalTo: curvedView.centerYAnchor, constant: -15).isActive = true
        view.bringSubviewToFront(buttonStackView)
    }
    
    fileprivate func setupButtonLabels() {
        [scanLabel, shareLabel].forEach { label in
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
            label.textAlignment = .center
        }
        
        buttonLabelStackView.addArrangedSubview(scanLabel)
        buttonLabelStackView.addArrangedSubview(shareLabel)
        
        buttonLabelStackView.distribution = .fillEqually
        
        view.addSubview(buttonLabelStackView)
        
        buttonLabelStackView.centerXAnchor.constraint(equalTo: curvedView.centerXAnchor).isActive = true
        buttonLabelStackView.anchor(
            top: nil,
            leading: buttonStackView.leadingAnchor,
            bottom: buttonStackView.topAnchor,
            trailing: buttonStackView.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 8, right: 0)
        )
    }
}
