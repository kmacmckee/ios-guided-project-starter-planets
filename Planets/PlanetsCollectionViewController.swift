//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Kobe McKee on 5/2/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit


class PlanetsCollectionViewController: UICollectionViewController {
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        <#code#>
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as! PlanetCollectionViewCell
        
        cell.textLabel.text = "Mars"
        
        return cell
    }
    
    
}

