//
//  PersonDetailViewController.swift
//  HW2.7
//
//  Created by Алексей Маслобоев on 19.02.2020.
//  Copyright © 2020 Алексей Маслобоев. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    // MARK: - Public Properties
    
    var person: Person!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        fullNameLabel.text = person.fullName
        emailLabel.text = person.email
        phoneLabel.text = person.phone
    }

}
