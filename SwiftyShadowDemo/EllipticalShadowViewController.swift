//
//  EllipticalShadowViewController.swift
//  SwiftyShadowDemo
//
//  Created by Minh Luan Tran on 11/4/17.
//

import UIKit
import SwiftyShadow

class EllipticalShadowViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.layer.cornerRadius = 120
        imageView.layer.shadowRadius = 20
        imageView.layer.shadowOpacity = 0.8
        imageView.layer.shadowColor = UIColor.black.cgColor
        imageView.layer.shadowOffset = CGSize.zero
        
        imageView.generateEllipticalShadow()
    }

}
