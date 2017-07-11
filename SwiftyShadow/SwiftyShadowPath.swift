//
//  SwiftyShadowPath.swift
//  SwiftyShadowExample
//
//  Created by luan on 7/11/17.
//  Copyright © 2017 luantran. All rights reserved.
//

import Foundation

enum SwiftyShadowMode {
    case left
    case right
    case top
    case bottom
    case all
    
    var paths: [SwiftyShadowMode] {
        switch self {
        case .all:
            return [.left, .right, .top, .bottom]
        default:
            return [self]
        }
    }
}
