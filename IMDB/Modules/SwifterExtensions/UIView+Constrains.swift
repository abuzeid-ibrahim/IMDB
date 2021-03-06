//
//  UIView+Constrains.swift
//  IMDB
//
//  Created by abuzeid on 13.08.20.
//  Copyright © 2020 abuzeid. All rights reserved.
//

import UIKit
extension UIView {
    func setConstrainsEqualToParentEdges(top: Float = 0, bottom: Float = 0, leading: Float = 0, trailing: Float = 0) {
        guard let parent = superview else {
            fatalError("This view doesn't have a parent")
        }
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: CGFloat(leading)),
            trailingAnchor.constraint(equalTo: parent.trailingAnchor, constant: -CGFloat(trailing)),
            topAnchor.constraint(equalTo: parent.topAnchor, constant: CGFloat(top)),
            bottomAnchor.constraint(equalTo: parent.bottomAnchor, constant: -CGFloat(bottom)),
        ])
    }

    func setConstrains(width: CGFloat, height: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: width),
            heightAnchor.constraint(equalToConstant: height),
        ])
    }
}
