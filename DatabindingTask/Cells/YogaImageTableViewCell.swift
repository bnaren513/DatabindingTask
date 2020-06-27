//
//  YogaImageTableViewCell.swift
//  DatabindingTask
//
//  Created by Narendra Biswa on 27/06/20.
//  Copyright © 2020 Narendra Biswa. All rights reserved.
//

import UIKit

class YogaImageTableViewCell: UITableViewCell {

    @IBOutlet weak var yogaView: UIView!
    @IBOutlet weak var yogaImageview: UIImageView!
    @IBOutlet weak var backButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       // self.yogaView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        yogaView.layer.cornerRadius = 30
                        yogaView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        fadeIn()
    }
    func fadeIn(duration: TimeInterval = 1.0) {
        UIView.animate(withDuration: duration, animations: {
          self.alpha = 1.0
      })
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
