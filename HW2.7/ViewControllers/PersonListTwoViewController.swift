//
//  PersonListTwoViewController.swift
//  HW2.7
//
//  Created by Алексей Маслобоев on 19.02.2020.
//  Copyright © 2020 Алексей Маслобоев. All rights reserved.
//

import UIKit

class PersonListTwoViewController: UITableViewController {

    // MARK: - Public Properties
    
    var persons = Person.getPersons()
    
    // MARK: - Private Properties
    
    private let indexPhone = 0
    private let indexEmail = 1

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let person = persons[indexPath.section]
        
        switch indexPath.row {
            case indexPhone:
                cell.textLabel?.text = person.phone
                cell.imageView?.image = UIImage(systemName: "phone")
            case indexEmail:
                cell.textLabel?.text = person.email
                cell.imageView?.image = UIImage(systemName: "tray")
            default: break
        }
        
        // Думаю так менее красиво:
        //cell.textLabel?.text = indexPath.row == indexPhone ? person.phone : person.email
        //cell.imageView?.image = UIImage(systemName: indexPath.row == indexPhone ? "phone" : "tray")
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

}
