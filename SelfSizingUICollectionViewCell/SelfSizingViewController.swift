//
//  ViewController.swift
//  SelfSizingUICollectionViewCell
//
//  Created by Parveen Kaler on 2018-01-15.
//  Copyright © 2018 Parveen Kaler. All rights reserved.
//

import UIKit

class SelfSizingViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout,
           let collectionView = collectionView {
            let w = collectionView.frame.width - 20
            flowLayout.estimatedItemSize = CGSize(width: w, height: 200)
        }
    }

    // MARK: - UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SelfSizingCollectionViewCell", for: indexPath) as? SelfSizingCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.label1.text = "This is label one.\nThis is label one.\nThis is label one.\nThis is label one.\nThis is label one."
        cell.label2.text = "This is label two.\nThis is label two.\nThis is label two.\nThis is label two.\nThis is label two."
        
        return cell
    }
}

