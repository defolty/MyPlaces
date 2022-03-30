//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Nikita Nesporov on 29.03.2022.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantName = [
        "Burger Heroes", "Kitchen", "Love&Life", "Morris Pub",
        "Sherlock Holmes", "Speak Easy", "X.O", "Балкан Гриль",
        "Бочка", "Вкусные истории", "Дастархан",
        "Индокитай", "Классик", "Шок", "Bonsai"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantName.count
    }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let indexPathRow = indexPath.row
        
        cell.textLabel?.text = restaurantName[indexPathRow]
        cell.imageView?.image = UIImage(named: restaurantName[indexPathRow])
        
        let cellSizeHeight = cell.frame.size.height
        cell.imageView?.layer.cornerRadius = cellSizeHeight / 4
        cell.imageView?.clipsToBounds = true
        
        return cell
    }
    
    //MARK: - Table View Delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}