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
    
    // also enter this string as the cell identifier in the storyboard
    let reuseIdentifier = "cell"
    var categories = ["Rental","xx","xx","yy","sss","ccc","sss1","tt"]
    let layout = UICollectionViewFlowLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        HomeCollectionView.delegate = self
        HomeCollectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 1
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //collectionView.register(HomeCollectionViewCell, forCellWithReuseIdentifier: "cell")
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! HomeCollectionViewCell
        cell.layer.cornerRadius = 8
        cell.categoryButton.setTitle(categories[indexPath.item], for: .normal)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("%d", indexPath.row)
    }
    
}

