//
//  TableViewEventController.swift
//  TasTrade
//
//  Created by David on 2017/9/23.
//  Copyright © 2017年 Gerry Gao. All rights reserved.
//

import UIKit

extension PostViewController {
    func TapDescriptionTextField(gestureRecognizer : UITapGestureRecognizer) -> Void {
        let cell = tableView.cellForRow(at: IndexPath(row: 1, section: 1)) as! DescriptionCell
        cell.descriptionTextField.text = ""
        cell.descriptionTextField.becomeFirstResponder()
    }
    
    func tapTitle(gestureRecognizer: UITapGestureRecognizer) -> Void {
        let cell = tableView.cellForRow(at: IndexPath(row: 0, section: 1)) as! TitleCell
        cell.title.text = ""
        cell.title.becomeFirstResponder()
    }
}
