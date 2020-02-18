//
//  PersonListOneViewController.swift
//  HW2.7
//
//  Created by Алексей Маслобоев on 18.02.2020.
//  Copyright © 2020 Алексей Маслобоев. All rights reserved.
//

import UIKit

class PersonListOneViewController: UITableViewController {

    // MARK: - Public Properties
    
    var persons = Person.getPersons()
    let personDetailSegue = "personDetail"

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        cell.textLabel?.text = persons[indexPath.row].fullName

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == personDetailSegue {
            if let indexPath = tableView.indexPathForSelectedRow {
                let detailVC = segue.destination as! PersonDetailViewController
                detailVC.person = persons[indexPath.row]
            }
        }
    }

}
