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
    var numberOfImages : Int?
    var imagesArrary : [UIImage]?
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

}

extension PostViewController {
    @IBAction func PostBtnPressDown(_ sender: Any) {
        //submit data to firebase
        
    }
}
