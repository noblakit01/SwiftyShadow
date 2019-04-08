//
//  SwiftyInnerShadowLayer.swift
//  SwiftyShadowExample
//
//  Created by luan on 7/11/17.
//  Copyright © 2017 luantran. All rights reserved.
//

import UIKit

public class SwiftyInnerShadowLayer: CAShapeLayer {
    
    override init() {
        super.init()
        initShadow()
    }
    
    override public init(layer: Any) {
        super.init(layer: layer)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initShadow()
    }
    
    override public var shadowOffset: CGSize {
        didSet {
            setNeedsLayout()
        }
    }
    
    override public var shadowOpacity: Float {
        didSet {
            setNeedsLayout()
        }
    }
    
    override public var shadowRadius: CGFloat {
        didSet {
            setNeedsLayout()
        }
    }
    
    override public var shadowColor: CGColor? {
        didSet {
            setNeedsLayout()
        }
    }
    
    func initShadow() {
        masksToBounds = true
        shouldRasterize = true
        
        fillRule = CAShapeLayerFillRule.evenOdd
        borderColor = UIColor.clear.cgColor
    }
    
    override public func layoutSublayers() {
        super.layoutSublayers()
        
        generateShadowPath()
    }
    
    func generateShadowPath() {
        let top = shadowRadius - shadowOffset.height
        let bottom = shadowRadius + shadowOffset.height
        let left = shadowRadius - shadowOffset.width
        let right = shadowRadius + shadowOffset.width
        let shadowRect = CGRect(x: bounds.origin.x - left,
                                y: bounds.origin.y - top,
                                width: bounds.width + left + right,
                                height: bounds.height + top + bottom)
        
        let path = CGMutablePath()
        let delta: CGFloat = 1
        let rect = CGRect(x: bounds.origin.x - delta, y: bounds.origin.y - delta, width: bounds.width + delta * 2, height: bounds.height + delta * 2)
        let bezier: UIBezierPath = {
            if cornerRadius > 0 {
                return UIBezierPath(roundedRect: rect, cornerRadius: cornerRadius)
            } else {
                return UIBezierPath(rect: rect)
            }
        }()
        path.addPath(bezier.cgPath)
        path.addRect(shadowRect)
        path.closeSubpath()
        self.path = path
    }
    
}
