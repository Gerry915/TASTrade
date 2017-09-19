//
//  HomeViewController.swift
//  TasTrade
//
//  Created by David Lan on 16/9/17.
//  Copyright © 2017 Gerry Gao. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate, UIScrollViewDelegate {
    @IBOutlet weak var HomeCollectionView: UICollectionView!
    @IBOutlet weak var HomeScrollView: UIScrollView!
    var timer : Timer!
    var currentPage : Int = 0
    var imageArray = [#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "DSC_0334")]
    
    // also enter this string as the cell identifier in the storyboard
    let reuseIdentifier = "cell"
    var categories = ["Rental","xx","xx","yy","sss","ccc","sss1","tt"]
    let layout = UICollectionViewFlowLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        HomeCollectionView.delegate = self
        HomeCollectionView.dataSource = self
        HomeScrollView.delegate = self
        
        ///scrollbar
        setUpScrollBar()
        
        //run the timer for page turning
        runTimer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
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


