//
//  UIView+Ext.swift
//  ProgrammaticPractice
//
//  Created by Jonathan Shoemaker on 8/13/20.
//  Copyright © 2020 JonathanShoemaker. All rights reserved.
//
//More reference for using constratins: https://www.youtube.com/watch?v=m_0_XQEfrGQ

import Foundation
import UIKit

extension UIView {
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
        
    }
}
