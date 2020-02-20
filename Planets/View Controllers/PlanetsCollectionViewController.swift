//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Kendra McVay on 2/19/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit



class PlanetsCollectionViewController: UICollectionViewController {

    private let planetController = PlanetController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }
    
    // make the unwind segue func (this one), control and drag done to the exit on the navigation controller bar, then the action segue should pop up.
    
    @IBAction func unwindToPlanetCollectionViewController(segue: UIStoryboardSegue) {
        self.collectionView.reloadData()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource



    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return PlanetController().planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as? PlanetCollectionViewCell else { return UICollectionViewCell() }
    
        // Configure the cell
        let planet = planetController.planets[indexPath.item]
        
        cell.planet = planet
        return cell
    }

}
