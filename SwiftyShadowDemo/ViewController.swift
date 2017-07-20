//
//  ViewController.swift
//  SwiftyShadowDemo
//
//  Created by luan on 7/20/17.
//
//

import UIKit
import SwiftyShadow


class ViewController: UIViewController {
    
    @IBOutlet weak var testView: SwiftyInnerShadowView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testView.shadowLayer.shadowRadius = 4
        testView.shadowLayer.shadowColor = UIColor.red.cgColor
        testView.shadowLayer.shadowOpacity = 0.8
        testView.shadowLayer.shadowOffset = CGSize.zero
        testView.cornerRadius = 120
    }
    
}

