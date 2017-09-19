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

    private var imageArray = [#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "DSC_0334")]
    
    
    
    // also enter this string as the cell identifier in the storyboard
    let reuseIdentifier = "cell"
    var categories = ["Rental","xx","xx","yy","sss","ccc","sss1","tt"]
    let layout = UICollectionViewFlowLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        HomeCollectionView.delegate = self
        HomeCollectionView.dataSource = self
        
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! HomeCollectionViewCell
        cell.layer.cornerRadius = 8
        cell.categoryButton.setTitle(categories[indexPath.item], for: .normal)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("%d", indexPath.row)
    }
    
}

