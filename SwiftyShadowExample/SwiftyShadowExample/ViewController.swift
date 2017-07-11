//
//  ViewController.swift
//  SwiftyShadowExample
//
//  Created by luan on 7/11/17.
//  Copyright © 2017 luantran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var testView: SwiftyInnerShadowView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testView.shadowLayer.shadowRadius = 5
        testView.shadowLayer.shadowColor = UIColor.red.cgColor
        testView.shadowLayer.shadowOpacity = 0.8
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

