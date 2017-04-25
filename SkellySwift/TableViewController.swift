//
//  TableViewController.swift
//  SkellySwift
//
//  Created by Andrew Greteman on 4/25/17.
//  Copyright © 2017 frostyFX. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITabBarDelegate {
    
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if (item.tag == 0){
            _ = self.navigationController?.popToRootViewController(animated: true);
        }
        if (item.tag == 1){
            _ = self.navigationController?.popViewController(animated: true);
        }
        if (item.tag == 2){
            let formViewControllerObj = self.storyboard?.instantiateViewController(withIdentifier: "FormViewController") as? FormViewController
            self.navigationController?.pushViewController(formViewControllerObj!, animated: true)
        }
        if (item.tag == 3){
            let scrollViewControllerObj = self.storyboard?.instantiateViewController(withIdentifier: "ScrollViewController") as? ScrollViewController
            self.navigationController?.pushViewController(scrollViewControllerObj!, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Hello!!!");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
