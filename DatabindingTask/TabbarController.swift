//
//  TabbarController.swift
//  DatabindingTask
//
//  Created by Narendra Biswa on 26/06/20.
//  Copyright © 2020 Narendra Biswa. All rights reserved.
//

import UIKit

class TabbarController: UITabBarController {
     private var gradient: CAGradientLayer!
    let layerGradient = CAGradientLayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.layer.masksToBounds = true
        self.tabBar.isTranslucent = true
        self.tabBar.barStyle = .blackOpaque
        self.tabBar.layer.cornerRadius = 30
        self.tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        let colour:UIColor = .white
        let colours:[CGColor] = [colour.withAlphaComponent(0.0).cgColor,colour.cgColor]
        let locations:[NSNumber] = [0.2,0.8]

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colours
        gradientLayer.locations = locations
       // gradientLayer.frame = frame

        self.tabBar.layer.addSublayer(gradientLayer)
        
        //tabbarBackgroundColorset()
        
//        gradient = CAGradientLayer()
//               gradient.frame = view.bounds
//               gradient.colors = [UIColor.red.cgColor, UIColor.purple.cgColor, UIColor.purple.cgColor, UIColor.blue.cgColor]
//               gradient.locations = [0, 0.1, 0.9, 1]
//               self.tabBar.layer.addSublayer(gradient)
 
        
    }
    func tabbarBackgroundColorset()
    {
        layerGradient.colors = [UIColor.black.cgColor, UIColor.white.cgColor]
               layerGradient.startPoint = CGPoint(x: 0, y: 0.5)
               layerGradient.endPoint = CGPoint(x: 1, y: 0.5)
               layerGradient.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
               self.tabBar.layer.addSublayer(layerGradient)
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
