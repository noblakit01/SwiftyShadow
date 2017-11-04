//
//  InnerShadowViewController.swift
//  SwiftyShadowDemo
//
//  Created by Minh Luan Tran on 11/4/17.
//

import UIKit
import SwiftyShadow

class InnerShadowViewController: UIViewController {

    @IBOutlet weak var testView: SwiftyInnerShadowView!
    @IBOutlet weak var imageInnerView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        testView.shadowLayer.shadowRadius = 10
        testView.shadowLayer.shadowColor = UIColor.red.cgColor
        testView.shadowLayer.shadowOpacity = 0.8
        testView.shadowLayer.shadowOffset = CGSize.zero
        testView.cornerRadius = 60
        
        imageInnerView.layer.cornerRadius = 60
        imageInnerView.layer.shadowRadius = 20
        imageInnerView.layer.shadowOpacity = 0.8
        imageInnerView.layer.shadowColor = UIColor.black.cgColor
        imageInnerView.layer.shadowOffset = CGSize.zero
        
        imageInnerView.generateInnerShadow()
    }
}
