//
//  ViewController.swift
//  ShimmerInSwift
//
//  Created by 11111 on 2017/6/26.
//  Copyright © 2017年 ZheJiang WanHang Mdt InfoTech CO.,Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var showView : ShimmerView!
    
    func initUI() {
        self.view.backgroundColor = ColorMethodho(hexValue: 0xffffff)
        
        showView = ShimmerView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: 100))
        showView.center = CGPoint.init(x: ScreenWidth / 2, y: ScreenHeight / 2)
        self.view.addSubview(showView)
        
        showView.isShimmering = true
        
        let tap : UITapGestureRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(tapEvent(sender:)))
        showView.addGestureRecognizer(tap)
    }
    
    func tapEvent(sender : UITapGestureRecognizer) {
        let _ : Bool = showView.isShimmering
        
        
    }
}

