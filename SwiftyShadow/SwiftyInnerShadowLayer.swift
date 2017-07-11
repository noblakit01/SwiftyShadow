//
//  SwiftyShadowLayer.swift
//  SwiftyShadowExample
//
//  Created by luan on 7/11/17.
//  Copyright © 2017 luantran. All rights reserved.
//

import UIKit

class SwiftyInnerShadowLayer: CALayer {

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
        
        
    }
}
