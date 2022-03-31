//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Nikita Nesporov on 29.03.2022.
//

import UIKit

class MainViewController: UITableViewController {
    
    let places = Place.getPlaces()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        let indexPathRow = indexPath.row
        let cellSizeHeight = cell.imageOfPlace.frame.size.height
        
        cell.nameLabel.text = places[indexPathRow].name
        cell.locationLabel.text = places[indexPathRow].location
        cell.typeLabel.text = places[indexPathRow].type
        cell.imageOfPlace.image = UIImage(named: places[indexPathRow].image)
        
        cell.imageOfPlace.layer.cornerRadius = cellSizeHeight / 4
        cell.imageOfPlace.clipsToBounds = true
        
        return cell
    }
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func cancelAction(_ : UIStoryboardSegue) {}

}


/*
 //MARK: - Table View Delegate
 
 override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
     return 85
 }

 */
