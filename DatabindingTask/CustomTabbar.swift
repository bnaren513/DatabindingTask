//
//  CustomTabbar.swift
//  DatabindingTask
//
//  Created by Narendra Biswa on 27/06/20.
//  Copyright © 2020 Narendra Biswa. All rights reserved.
//


import UIKit

class CustomTabBar : UITabBar {
    @IBInspectable var height: CGFloat = 0.0

    override func sizeThatFits(_ size: CGSize) -> CGSize {
        var sizeThatFits = super.sizeThatFits(size)
        if height > 0.0 {
            sizeThatFits.height = height
        }
        return sizeThatFits
    }
}
