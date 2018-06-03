//
//  homeViewController.swift
//  livestraming
//
//  Created by USER on 2018/5/31.
//  Copyright © 2018年 Trispective. All rights reserved.
//

import UIKit
private let ktitleviewh : CGFloat = 40

class homeViewController: UIViewController {
    
     lazy var pageTitleview : pagetitleview = {
        let titleframe = CGRect(x: 0, y: kStatusBarH + kNavigationBar, width: kscreenw, height: ktitleviewh)
        let titles = ["推荐","游戏","娱乐","趣玩"]
        let titleView = pagetitleview(frame: titleframe, titles: titles)
        
        return titleView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }

    


}

//设置ui界面

extension homeViewController{
    
    func setupUI(){
        
        automaticallyAdjustsScrollViewInsets = false
        //设置导航栏
        setupnavigationbar()
        
        view.addSubview(pageTitleview)
        
        
    }
    private func setupnavigationbar() {
        //1  设置左侧item
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")
        
        //2 设置右侧item
        //historybutton
        let size = CGSize(width: 40, height: 40)
        
        let historyitem = UIBarButtonItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size)
        //searchbutton

        let searchitem = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size)
        
        //qr code button

        let qrcode = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan", size: size)
        
        navigationItem.rightBarButtonItems = [historyitem,searchitem,qrcode]
        
    }
}
