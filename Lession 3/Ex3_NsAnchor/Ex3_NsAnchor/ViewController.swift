//
//  ViewController.swift
//  Ex3_NsAnchor
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
        
        redView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        redView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        redView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier : 1/2).isActive = true
      
        let blueView = UIView()
        blueView.backgroundColor = UIColor.blue
        blueView.autoresizesSubviews = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueView)
     
        blueView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 0).isActive = true
        blueView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        blueView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2).isActive = true
        
        let orangeView = UIView()
        orangeView.backgroundColor = UIColor.orange
        orangeView.autoresizesSubviews = false
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(orangeView)
        
        orangeView.topAnchor.constraint(equalTo: blueView.topAnchor, constant: 0).isActive = true
        orangeView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: 0).isActive = true
        orangeView.heightAnchor.constraint(equalTo: blueView.heightAnchor, multiplier: 1/2).isActive = true
        orangeView.widthAnchor.constraint(equalTo: blueView.widthAnchor, multiplier: 1).isActive = true
    
        let greenView = UIView()
        greenView.backgroundColor = UIColor.green
        greenView.autoresizesSubviews = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(greenView)
        
        greenView.topAnchor.constraint(equalTo: orangeView.bottomAnchor, constant: 0).isActive = true
        greenView.leadingAnchor.constraint(equalTo: orangeView.leadingAnchor, constant: 0).isActive = true
        greenView.heightAnchor.constraint(equalTo: orangeView.heightAnchor, multiplier: 1).isActive = true
        greenView.widthAnchor.constraint(equalTo: orangeView.widthAnchor, multiplier: 1/2).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

