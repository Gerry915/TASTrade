//
//  ScrollViewController.swift
//  TasTrade
//
//  Created by David Lan on 21/9/17.
//  Copyright © 2017 Gerry Gao. All rights reserved.
//

import UIKit


extension HomeViewController {
    //this function will be called when finger up and the scrollbar stop moving in scrollview
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let xPosion = scrollView.contentOffset.x
        let page = Int(xPosion / self.HomeScrollView.frame.width)
        currentPage = page
        runTimer()
    }
    
    //this function will be called when user starting interact with scrollview
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        timer.invalidate()
    }
}


