//
//  ShimmerLayer.swift
//  ShimmerInSwift
//
//  Created by 11111 on 2017/6/26.
//  Copyright © 2017年 ZheJiang WanHang Mdt InfoTech CO.,Ltd. All rights reserved.
//

import UIKit

class ShimmerLayer: CALayer {
    override init() {
        super.init()
        self.backgroundColor = ColorMethodho(hexValue: 0xff4438).withAlphaComponent(0.2).cgColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var isShimmeringInner : Bool!
    var isShimmering : Bool{
        set{
            changedUI(state: newValue)
        }
        get{
            print("return in layer")
            return isShimmeringInner
        }
    }
    
    func changedUI(state : Bool) {
        if state != isShimmeringInner {
            isShimmeringInner = state
            print("show in layer")
        }
        
    }
}
