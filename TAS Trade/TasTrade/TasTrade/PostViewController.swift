//
//  PostViewController.swift
//  TasTrade
//
//  Created by David Lan on 16/9/17.
//  Copyright © 2017 Gerry Gao. All rights reserved.
//

import UIKit

class PostViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    var imageView : UIImageView!
    
    let imgCell = "imgcell"
    let titleCell = "titlecell"
    let descriptionCell = "descriptioncell"
    let categoryCell = "categorycell"
    
    let cells = ["imgcell","titlecell", "descriptioncell", "categorycell"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
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
            let cell = tableView.dequeueReusableCell(withIdentifier: self.cells[row + 1])
            return cell!
        
    }
}
