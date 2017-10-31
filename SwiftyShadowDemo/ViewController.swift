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
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageInnerView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testView.shadowLayer.shadowRadius = 10
        testView.shadowLayer.shadowColor = UIColor.red.cgColor
        testView.shadowLayer.shadowOpacity = 0.8
        testView.shadowLayer.shadowOffset = CGSize.zero
        testView.cornerRadius = 60
        
        imageView.layer.cornerRadius = 60
        imageView.layer.shadowRadius = 20
        imageView.layer.shadowOpacity = 0.8
        imageView.layer.shadowColor = UIColor.black.cgColor
        imageView.layer.shadowOffset = CGSize.zero
        
        imageView.generateOuterShadow()
        
        imageInnerView.layer.cornerRadius = 60
        imageInnerView.layer.shadowRadius = 20
        imageInnerView.layer.shadowOpacity = 0.8
        imageInnerView.layer.shadowColor = UIColor.black.cgColor
        imageInnerView.layer.shadowOffset = CGSize.zero
        
        imageInnerView.generateInnerShadow()
        
    }
    
}
