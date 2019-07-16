//
//  CardViewController.swift
//  Tocca-Challenge
//
//  Created by Conner on 7/15/19.
//  Copyright © 2019 Conner. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {
    let myCardLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        lbl.text = "My Card"
        lbl.textColor = .white
        lbl.textAlignment = .center
        return lbl
    }()

    override func viewDidLoad() {
        view.backgroundColor = #colorLiteral(red: 0.1507650614, green: 0.3526057601, blue: 0.8449645638, alpha: 1)

        view.addSubview(myCardLabel)
        myCardLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 20, left: 10, bottom: 0, right: 10))

        let shapedView = CurvedView()
        shapedView.backgroundColor = #colorLiteral(red: 0.9622105956, green: 0.9724721313, blue: 0.997379601, alpha: 1)
        view.addSubview(shapedView)

        shapedView.constrainHeight(constant: 85)
        shapedView.anchor(top: nil, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
    }
}
