//
//  NewPlaceViewController.swift
//  MyPlaces
//
//  Created by Nikita Nesporov on 31.03.2022.
//

import UIKit
 
extension NewPlaceViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // MARK: - Table View Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            
        } else {
            // tableView.cellForRow(at: indexPath)?.selectionStyle = .none
            view.endEditing(true)
        }
    }
}

class NewPlaceViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
        tableView.tableFooterView = UIView() // выкл лишнюю разлиновку
    }
}
