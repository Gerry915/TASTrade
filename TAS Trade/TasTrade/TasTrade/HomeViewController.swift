//
//  HomeViewController.swift
//  TasTrade
//
//  Created by David Lan on 16/9/17.
//  Copyright © 2017 Gerry Gao. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout, UIScrollViewDelegate {
    @IBOutlet weak var HomeCollectionView: UICollectionView!
    @IBOutlet weak var HomeScrollView: UIScrollView!
    var timer : Timer!
    var currentPage : Int = 0
    var imageArray = [#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "DSC_0334"),#imageLiteral(resourceName: "DSC_0348")]
    
    // also enter this string as the cell identifier in the storyboard
    let reuseIdentifier = "cell"
    var categories = ["Rental","xx","xx","yy","sss","ccc","sss1","tt"]
    
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
}


