//
//  pagetitleview.swift
//  livestraming
//
//  Created by USER on 2018/6/1.
//  Copyright © 2018年 Trispective. All rights reserved.
//

import UIKit

private let kscrollLineH : CGFloat = 2

class pagetitleview: UIView {
    


    //自定义构造函数
    var titles : [String]
    lazy var scrollView : UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.scrollsToTop = false
        scrollView.bounces = false
        return scrollView
    }()
    lazy var scrollline : UIView = {
        return scrollline
    }()
    
    init(frame : CGRect, titles : [String]){
        
        self.titles = titles
        
        
        super.init(frame : frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}



extension pagetitleview{
     func setupUI() {
        addSubview(scrollView)
        
        scrollView.frame = bounds
        
        setupTielelabels()
        
        
    }
    private func setupbottomandscrollline(){
        
        let bottomline = UIView()
        
        bottomline.backgroundColor = UIColor.lightGray
        
        let lineh : CGFloat = 0.5
        
        bottomline.frame = CGRect(x: 0, y: frame.height - lineh, width: frame.width, height: lineh)
        
        scrollView.addSubview(bottomline)
        
    }
    
    private func setupTielelabels(){
        
        let labelw : CGFloat = frame.width / CGFloat(titles.count)
        let labelh : CGFloat = frame.height - kscrollLineH
        let labely : CGFloat = 0
        
        for (index, title) in titles.enumerated(){
            let label = UILabel()
            
            label.text = title
            label.tag = index
            label.font = UIFont.systemFont(ofSize: 16.0)
            label.textColor = UIColor.darkGray
            label.textAlignment = .center
            
            
            
            
            let labelx : CGFloat = labelw * CGFloat(index)
            label.frame = CGRect(x: labelx, y: labely, width: labelw, height: labelh)
            
            scrollView.addSubview(label)
        }
    }
    
}
