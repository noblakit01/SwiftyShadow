//
//  SwiftyInnerShadowLayer.swift
//  SwiftyShadowExample
//
//  Created by luan on 7/11/17.
//  Copyright © 2017 luantran. All rights reserved.
//

import UIKit

class SwiftyInnerShadowLayer: CALayer {

    var shadowModes: [SwiftyShadowMode] = [.left, .right, .top, .bottom]
    
    convenience init(mode: [SwiftyShadowMode]) {
        self.init()
        shadowModes = mode
    }
    
    override init() {
        super.init()
        initShadow()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initShadow()
    }
    
    func initShadow() {
        masksToBounds = true
        needsDisplayOnBoundsChange = true
        shouldRasterize = true
        
        fillMode = kCAFillRuleEvenOdd
    }
    
    override func layoutSublayers() {
        super.layoutSublayers()
        
        let top = shadowModes.contains(.top) ? shadowRadius : 0
        let bottom = shadowModes.contains(.bottom) ? shadowRadius : 0
        let left = shadowModes.contains(.left) ? shadowRadius : 0
        let right = shadowModes.contains(.right) ? shadowRadius : 0
        let shadowRect = CGRect(x: bounds.origin.x - left,
                                y: bounds.origin.y - top,
                                width: bounds.width + left + right,
                                height: bounds.height + top + bottom)
        
        let path = CGMutablePath()
        path.addRect(shadowRect)
        let bezier: UIBezierPath = {
            if cornerRadius > 0 {
                return UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
            } else {
                return UIBezierPath(rect: bounds)
            }
        }()
        path.addPath(bezier.cgPath)
        path.closeSubpath()
        
        shadowPath = path
    }
}
