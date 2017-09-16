//
//  MainViewController.swift
//  TasTrade
//
//  Created by David Lan on 16/9/17.
//  Copyright © 2017 Gerry Gao. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        addSubview(name: "Home")
        addSubview(name: "Post")
        addSubview(name: "Profile")
        
    }
    
    func addSubview(name : String) -> Void {
        let uicontroller = UIStoryboard.init(name: name, bundle: nil).instantiateInitialViewController()
        self.addChildViewController(uicontroller!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
