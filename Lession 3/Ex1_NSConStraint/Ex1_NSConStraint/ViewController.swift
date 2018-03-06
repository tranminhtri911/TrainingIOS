//
//  ViewController.swift
//  Ex1_NSConStraint
//
//  Created by Tran Tri on 3/6/18.
//  Copyright © 2018 Tran Tri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redView = UIView()
        redView.backgroundColor = UIColor.red
        redView.autoresizesSubviews = false
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(redView)
        
        NSLayoutConstraint(item: redView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 20).isActive = true
        NSLayoutConstraint(item: redView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: view,attribute: .height, multiplier: 1/2, constant: 0).isActive = true
       
        let blueView = UIView()
        blueView.backgroundColor = UIColor.blue
        blueView.autoresizesSubviews = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueView)
        
        NSLayoutConstraint(item: blueView, attribute: .top, relatedBy: .equal, toItem: redView, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: blueView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: blueView, attribute: .width, relatedBy: .equal, toItem: redView, attribute: .width, multiplier: 1/2, constant: 0).isActive = true
        
        let orangeView = UIView()
        orangeView.backgroundColor = UIColor.orange
        orangeView.autoresizesSubviews = false
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(orangeView)
        
        NSLayoutConstraint(item: orangeView, attribute: .top, relatedBy: .equal, toItem: redView, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
         NSLayoutConstraint(item: orangeView, attribute: .left, relatedBy: .equal, toItem: blueView, attribute: .right, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: orangeView, attribute: .width, relatedBy: .equal, toItem: blueView, attribute: .width, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: orangeView, attribute: .height, relatedBy: .equal, toItem: blueView, attribute: .height, multiplier: 1/2, constant: 0).isActive = true
        
        let greenView = UIView()
        greenView.backgroundColor = UIColor.green
        greenView.autoresizesSubviews = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(greenView)
        
        NSLayoutConstraint(item: greenView, attribute: .top, relatedBy: .equal, toItem: orangeView, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: greenView, attribute: .left, relatedBy: .equal, toItem: orangeView, attribute: .left, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: greenView, attribute: .width, relatedBy: .equal, toItem: orangeView, attribute: .width, multiplier: 1/2, constant: 0).isActive = true
        NSLayoutConstraint(item: greenView, attribute: .height, relatedBy: .equal, toItem: orangeView, attribute: .height, multiplier: 1, constant: 0).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

