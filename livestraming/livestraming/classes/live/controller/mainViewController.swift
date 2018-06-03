//
//  mainViewController.swift
//  livestraming
//
//  Created by USER on 2018/5/31.
//  Copyright © 2018年 Trispective. All rights reserved.
//

import UIKit

class mainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        addchildvc(storyName: "home")
        addchildvc(storyName: "live")
        addchildvc(storyName: "follow")
        addchildvc(storyName: "profile")
        
    }
    
        private func addchildvc(storyName : String){
            
            
            let childvc = UIStoryboard(name: storyName, bundle:nil).instantiateInitialViewController()!
            
            addChildViewController(childvc)
        }
    
    }


    

