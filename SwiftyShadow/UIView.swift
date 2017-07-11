//
//  UIView.swift
//  iKidz
//
//  Created by luan on 7/5/17.
//  Copyright © 2017 Sua Le. All rights reserved.
//

import UIKit

enum ShadowPath {
    case left
    case right
    case top
    case bottom
    case all
    
    var paths: [ShadowPath] {
        switch self {
        case .all:
            return [.left, .right, .top, .bottom]
        default:
            return [self]
        }
    }
}

extension UIView {
    func createInnerShadow(color: UIColor, radius: CGFloat, shadowPath: ShadowPath = ShadowPath.all) {
        let shadowView = UIView(frame: self.bounds)
        shadowView.backgroundColor = UIColor.clear
        
        for path in shadowPath.paths {
            let shadow = CAGradientLayer(layer: layer)
            shadow.cornerRadius = layer.cornerRadius
            switch path {
            case .left:
                shadow.frame = CGRect(x: 0, y: 0, width: radius, height: bounds.height)
                shadow.startPoint = CGPoint(x: 0.0, y: 0.5)
                shadow.endPoint = CGPoint(x: 1.0, y: 0.5)
            case .right:
                shadow.frame = CGRect(x: bounds.width - radius, y: 0, width: radius, height: bounds.height)
                shadow.startPoint = CGPoint(x: 1.0, y: 0.5)
                shadow.endPoint = CGPoint(x: 0.0, y: 0.5)
            case .top:
                shadow.startPoint = CGPoint(x: 0.5, y: 0.0)
                shadow.endPoint = CGPoint(x: 0.5, y: 1.0)
                shadow.frame = CGRect(x: 0, y: 0, width: bounds.width, height: radius)
            case .bottom:
                shadow.startPoint = CGPoint(x: 0.5, y: 1.0)
                shadow.endPoint = CGPoint(x: 0.5, y: 0.0)
                shadow.frame = CGRect(x: 0, y: bounds.height - radius, width: bounds.width, height: radius)
            default:
                break
            }
            shadow.colors = [color.cgColor, UIColor.clear.cgColor]
            shadowView.layer.insertSublayer(shadow, at: 0)
        }
        
        addSubview(shadowView)
    }
}
