//
//  UIView.swift
//  SwiftyShadow
//
//  Created by luan on 7/23/17.
//
//

import UIKit

extension UIView {
    
    open func generateOuterShadow() {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = layer.cornerRadius
        view.layer.shadowRadius = layer.shadowRadius
        view.layer.shadowOpacity = layer.shadowOpacity
        view.layer.shadowColor = layer.shadowColor
        view.layer.shadowOffset = CGSize.zero
        view.clipsToBounds = false
        view.backgroundColor = .white
        
        superview?.insertSubview(view, belowSubview: self)
        
        let constraints = [
            NSLayoutConstraint(item: view, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: view, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: view, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: view, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0.0),
        ]
        superview?.addConstraints(constraints)
    }
    
    open func generateInnerShadow() {
        let view = SwiftyInnerShadowView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.shadowLayer.cornerRadius = layer.cornerRadius
        view.shadowLayer.shadowRadius = layer.shadowRadius
        view.shadowLayer.shadowOpacity = layer.shadowOpacity
        view.shadowLayer.shadowColor = layer.shadowColor
        view.shadowLayer.shadowOffset = CGSize.zero
        view.clipsToBounds = false
        view.backgroundColor = .clear
        
        superview?.insertSubview(view, aboveSubview: self)
        
        let constraints = [
            NSLayoutConstraint(item: view, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: view, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: view, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: view, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0.0),
            ]
        superview?.addConstraints(constraints)
    }
    
    open func generateEllipticalShadow() {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = layer.cornerRadius
        view.layer.shadowRadius = layer.shadowRadius
        view.layer.shadowOpacity = layer.shadowOpacity
        view.layer.shadowColor = layer.shadowColor
        view.layer.shadowOffset = CGSize.zero
        view.clipsToBounds = false
        view.backgroundColor = .white
        
        let ovalRect = CGRect(x: 0, y: frame.size.height + 10, width: frame.size.width, height: 15)
        let path = UIBezierPath(ovalIn: ovalRect)
        
        view.layer.shadowPath = path.cgPath
        
        superview?.insertSubview(view, belowSubview: self)
        
        let constraints = [
            NSLayoutConstraint(item: view, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: view, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: view, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: view, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0.0),
            ]
        superview?.addConstraints(constraints)
    }
    
}
