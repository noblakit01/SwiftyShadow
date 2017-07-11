//
//  SwiftyInnerShadowView.swift
//  SwiftyShadowExample
//
//  Created by luan on 7/11/17.
//  Copyright © 2017 luantran. All rights reserved.
//

import UIKit

class SwiftyInnerShadowView: UIView {

    var shadowLayer = SwiftyInnerShadowLayer()

    override var bounds: CGRect {
        didSet {
            shadowLayer.frame = bounds
        }
    }
    
    override var frame: CGRect {
        didSet {
            shadowLayer.frame = bounds
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initShadowLayer()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initShadowLayer()
    }
    
    fileprivate func initShadowLayer() {
        layer.addSublayer(shadowLayer)
    }
    
}
