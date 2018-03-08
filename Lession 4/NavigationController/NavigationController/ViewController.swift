//
//  ViewController.swift
//  NavigationController
//
//  Created by Tran Tri on 3/7/18.
//  Copyright © 2018 Tran Tri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
 @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("did load")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("did disappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func GoNextXanhScreen(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        let xanhSreen = sb.instantiateViewController(withIdentifier: "Xanh") as! XanhViewController
        
        xanhSreen.name = txtName.text
        
        self.navigationController?.pushViewController(xanhSreen, animated: true)
        
    }
}

