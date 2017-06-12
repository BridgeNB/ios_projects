//
//  ViewController.swift
//  Counter
//
//  Created by ZHENGYANGQIAO on 6/11/17.
//  Copyright © 2017 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // label
        var label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height:60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        // Increment Button
        var button = UIButton()
        button.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        // Decrement Button
    }
    func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
}

