//
//  ImagePickController.swift
//  TasTrade
//
//  Created by David Lan on 23/9/17.
//  Copyright © 2017 Gerry Gao. All rights reserved.
//

import UIKit
import Photos

extension PostViewController{
    func imageTapped(gestureRecognizer : UITapGestureRecognizer) -> Void {

        self.presentHGImagePicker(maxSelected: 4) { (assets) in
            print(assets.count)
            let manager = PHImageManager.default()
            let option = PHImageRequestOptions()
            var thumbail = UIImage()
            option.isSynchronous = true
            let size = CGSize(width: 100, height: 100)
            for asset in assets {
                
                manager.requestImage(for: asset, targetSize: self.imageView.frame.size, contentMode: .aspectFit, options: option, resultHandler: { (result, info) in
                    thumbail = result!
                })
            }
            self.imageView.image = thumbail
        }
    }
}
