//
//  PromptView.swift
//  Walkthrough
//
//  Created by Matthew Rigdon on 2/15/17.
//  Copyright © 2017 Matthew Rigdon. All rights reserved.
//

import UIKit

class PromptView: UIView {
    
    // MARK: - Properties
    
    let label = UILabel()
    let textField = UITextField()
    var walkthrough: Walkthrough!
    
    // MARK: - Initializers

    convenience init(walkthrough: Walkthrough) {
        self.init(frame: CGRect.zero)
        translatesAutoresizingMaskIntoConstraints = false
        self.walkthrough = walkthrough
        backgroundColor = .white
        setupLabel()
        setupTextField()
    }
    
    // MARK: - Methods
    
    private func setupLabel() {
        label.text = walkthrough.delegate?.textsForWalkthrough()[walkthrough.walkthroughView.selectedButton.index]
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        NSLayoutConstraint(item: label, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 8).isActive = true
        NSLayoutConstraint(item: label, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1, constant: 8).isActive = true
        NSLayoutConstraint(item: label, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1, constant: -8).isActive = true
    }
    
    private func setupTextField() {
        textField.borderStyle = .roundedRect
        textField.placeholder = "Type text here"
        textField.translatesAutoresizingMaskIntoConstraints = false
        addSubview(textField)
        NSLayoutConstraint(item: textField, attribute: .top, relatedBy: .equal, toItem: label, attribute: .bottom, multiplier: 1, constant: 16).isActive = true
        NSLayoutConstraint(item: textField, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1, constant: 8).isActive = true
        NSLayoutConstraint(item: textField, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1, constant: -8).isActive = true
        NSLayoutConstraint(item: textField, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: -8).isActive = true
    }

}
