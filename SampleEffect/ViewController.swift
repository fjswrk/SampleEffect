//
//  ViewController.swift
//  SampleEffect
//
//  Created by sample on 2015/03/17.
//  Copyright (c) 2015年 sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let imageView = UIImageView()
    var blurStyle = UIBlurEffectStyle.Light  // デフォルトはLight

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.image = UIImage(named: "sample.jpg")
        view.addSubview(imageView)
        
        imageView.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addConstraint(NSLayoutConstraint(item: imageView, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 1.0, constant: 0.0))
        view.addConstraint(NSLayoutConstraint(item: imageView, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 1.0, constant: 0.0))
     
        var blurEffect = UIBlurEffect(style: blurStyle)
        var blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = view.bounds
        view.insertSubview(blurView, aboveSubview: imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

