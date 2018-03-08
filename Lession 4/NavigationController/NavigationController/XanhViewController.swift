//
//  XanhViewController.swift
//  NavigationController
//
//  Created by Tran Tri on 3/7/18.
//  Copyright © 2018 Tran Tri. All rights reserved.
//

import UIKit

class XanhViewController: UIViewController {

    var name:String!
    
    @IBOutlet weak var txtXanh: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        txtXanh.text = name
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func GoNext(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        let doScreen = sb.instantiateViewController(withIdentifier: "Do") as! DoViewController
        
        self.navigationController?.pushViewController(doScreen, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}
