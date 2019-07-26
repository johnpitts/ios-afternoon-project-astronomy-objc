//
//  PhotosCollectionViewController.swift
//  AstronomyObjC2Mon
//
//  Created by John Pitts on 7/22/19.
//  Copyright © 2019 johnpitts. All rights reserved.
//
// Register cell classes
//self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

import UIKit

private let reuseIdentifier = "ImageCell"

class PhotosCollectionViewController: UICollectionViewController {
    
    // PROPERTIES:
    
    let marsRoverClient = MarsRoverClient()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        marsRoverClient.fetchRover(named: "Curiosity") { (rover, error) in
            if let error = error {
                NSLog("Error fetching rover: \(error)")
                return
            }
        }


        // call for Sol 0
        navigationItem.title = "< Sol >"  //need to do TitleView for custom arrows displaying other sols
        
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    

}
