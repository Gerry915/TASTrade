//
//  HomeScrollBarController.swift
//  TasTrade
//
//  Created by David Lan on 21/9/17.
//  Copyright © 2017 Gerry Gao. All rights reserved.
//

import UIKit

extension HomeViewController {
    //MARK:- Page turning controll
    func runTimer() ->Void {
        self.timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(scrollPage), userInfo: nil, repeats: true)
        timer.fire()
    }
    
    func scrollPage() -> Void {
        if currentPage != 0 && currentPage % imageArray.count == 0 {
            currentPage = 0
        }
        turningPage(page: currentPage)
        currentPage = currentPage + 1
    }
    
    //programmatically turning page for scrollbar
    func turningPage(page : Int) -> Void {
        let pageWidth = self.HomeScrollView.frame.width
        let cp = CGPoint(x: pageWidth * CGFloat(page), y: 0)
        self.HomeScrollView.setContentOffset(cp, animated: true)
    }
}
