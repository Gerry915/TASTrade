//
//  HomeScrollBarView.swift
//  TasTrade
//
//  Created by David Lan on 21/9/17.
//  Copyright © 2017 Gerry Gao. All rights reserved.
//

import UIKit

extension HomeViewController {
    //scrollbar
    func setUpScrollBar() -> Void {
        //set up Advertisment scrollbar
        for i in 0..<self.imageArray.count {
            let xPosition = self.view.frame.size.width * CGFloat(i)
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFill
            imageView.image = self.imageArray[i]
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.HomeScrollView.frame.width, height: self.HomeScrollView.frame.height)
            self.HomeScrollView.contentSize.width = self.HomeScrollView.frame.width * CGFloat(i + 1)
            self.HomeScrollView.addSubview(imageView)
        }
    }
}
