//
//  PostTableView.swift
//  TasTrade
//
//  Created by David on 2017/9/23.
//  Copyright © 2017年 Gerry Gao. All rights reserved.
//

import UIKit

extension PostViewController {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let section = indexPath.section
        let row = indexPath.row
        let height = self.tableView.frame.height
        
        if section == 0 {
            return height * 0.4
        }
        
        if section == 1 {
            if row == 0{
                return height * 0.15
            } else if row == 1 {
                return height * 0.3
            } else if row == 2{
                return height * 0.15
            }
        }
        
        return 0
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        if section == 1 {
            return 3
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: self.cells[row], for: indexPath) as! ImageViewCell
            self.imageView = cell.itemImages
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(gestureRecognizer:)))
            self.imageView.addGestureRecognizer(tapGestureRecognizer)
            self.imageView.isUserInteractionEnabled = true
            return cell
        }
        
        if self.cells[row + 1] == "descriptioncell" {
            let cell = tableView.dequeueReusableCell(withIdentifier: self.cells[row + 1], for: indexPath) as! DescriptionCell
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(TapDescriptionTextField(gestureRecognizer:)))
            cell.descriptionTextField.addGestureRecognizer(tapGestureRecognizer)
            return cell
        } else if self.cells[row + 1] == "categorycell" {
            let cell = tableView.dequeueReusableCell(withIdentifier: self.cells[row + 1], for: indexPath) as! CategoryCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: self.cells[row + 1], for: indexPath) as! TitleCell
            cell.title.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tapTitle(gestureRecognizer:))))
            return cell
        }
    }
}
