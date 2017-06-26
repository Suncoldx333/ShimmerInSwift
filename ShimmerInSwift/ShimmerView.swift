//
//  ShimmerView.swift
//  ShimmerInSwift
//
//  Created by 11111 on 2017/6/26.
//  Copyright © 2017年 ZheJiang WanHang Mdt InfoTech CO.,Ltd. All rights reserved.
//

import UIKit

class ShimmerView: UIView {

    override class var layerClass : AnyClass{
        get{
            return ShimmerLayer.self
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var underLayer : ShimmerLayer!
    
    var isShimmering : Bool{
        set{
            underLayer.isShimmering = newValue
        }
        get{
            return underLayer.isShimmering
        }
    }
    
    
    func initUI() {
        underLayer = self.layer as! ShimmerLayer
    }

}
