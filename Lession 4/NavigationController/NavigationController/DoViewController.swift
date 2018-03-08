//
//  DoViewController.swift
//  NavigationController
//
//  Created by Tran Tri on 3/7/18.
//  Copyright © 2018 Tran Tri. All rights reserved.
//

import UIKit

class DoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func backPrevious(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func backRoot(_ sender: Any) {
         self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func backView(_ sender: Any) {
        
        let xanhSreen = self.navigationController?.viewControllers[1] as! XanhViewController
        
        xanhSreen.name =  "abc"
        
        self.navigationController?.popToViewController(xanhSreen, animated: true)
    }
    
}
