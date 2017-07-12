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
        needsDisplayOnBoundsChange = true
        shouldRasterize = true
        
        fillRule = kCAFillRuleEvenOdd
        borderColor = UIColor.clear.cgColor
    }
    
    override public var frame: CGRect {
        didSet {
            setNeedsLayout()
        }
    }
    
    override public func layoutSublayers() {
        super.layoutSublayers()
        
        
        let top = shadowRadius - shadowOffset.height
        let bottom = shadowRadius + shadowOffset.height
        let left = shadowRadius - shadowOffset.width
        let right = shadowRadius + shadowOffset.width
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
        
        self.path = path
    }
}
