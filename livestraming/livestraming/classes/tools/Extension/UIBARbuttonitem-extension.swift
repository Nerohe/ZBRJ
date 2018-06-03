//
//  UIBARbuttonitem-extension.swift
//  livestraming
//
//  Created by USER on 2018/5/31.
//  Copyright © 2018年 Trispective. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    /*
    class func creatItem(imageName : String, highImageName : String, size : CGSize) -> UIBarButtonItem {
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.setImage(UIImage(named: highImageName), for: .highlighted)
        
        btn.frame = CGRect(origin: CGPoint(),size: size)
        
        return UIBarButtonItem(customView: btn)
    }*/
    
    //遍历构造函数
    convenience init(imageName : String, highImageName : String = "", size : CGSize = CGSize()) {
        //1.uibutton
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), for: .normal)
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: .highlighted)
        }
        if size == CGSize(){
            btn.sizeToFit()
        }else{
            btn.frame = CGRect(origin: CGPoint(),size: size)
        }
        
        self.init(customView : btn)
    }
}
