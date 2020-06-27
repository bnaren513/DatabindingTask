//
//  YogaViewController.swift
//  DatabindingTask
//
//  Created by Narendra Biswa on 27/06/20.
//  Copyright © 2020 Narendra Biswa. All rights reserved.
//

import UIKit


class YogaViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.row == 0)
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "YogaImagecell", for: indexPath) as! YogaImageTableViewCell
            cell.backButton.tag = indexPath.row;
            cell.backButton.addTarget(self, action: #selector(backButton(sender:)), for: .touchUpInside)
            //        cell.backButton.clipsToBounds = true
            //        cell.backButton.layer.cornerRadius = 10
            //        cell.backButton.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
           
            
            
            return cell
        }
        else if(indexPath.row == 1)
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LocationCell", for: indexPath) as! LocationTableViewCell
            return cell
            
        }
        else if(indexPath.row == 2)
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MapCell", for: indexPath) as! MapTableViewCell
            return cell
            
        }
            
        else if (indexPath.row == 3)
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DescriptionCell", for: indexPath) as! DescriptionTableViewCell
            return cell
            
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RatingCell", for: indexPath) as! RatingTableViewCell
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.row == 0)
        {
            return 250
        }
        else if (indexPath.row == 1 || indexPath.row == 3)
        {
            return UITableView.automaticDimension;
        }
        else if (indexPath.row == 2)
        {
            return 140;
        }
        else
        {
            return 80
        }
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.row == 0)
        {
            return 250
        }
        else if (indexPath.row == 1 || indexPath.row == 3)
        {
            return UITableView.automaticDimension;
        }
        else if (indexPath.row == 2)
        {
            return 140;
        }
        else
        {
            return 80
        }
    }
    @objc func backButton(sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    @IBOutlet weak var yogaTableview: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true;
        yogaTableview.rowHeight = UITableView.automaticDimension
        yogaTableview.estimatedRowHeight = 50
        // Do any additional setup after loading the view.
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
