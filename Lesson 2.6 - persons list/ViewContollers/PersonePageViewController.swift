//
//  PersonePageViewController.swift
//  Lesson 2.6 - persons list
//
//  Created by Алексей Верховых on 24.03.2022.
//

import UIKit

class PersonePageViewController: UIViewController {

    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullname
        navigationItem.backButtonTitle = "Back"
        
        emailLabel.text = "Email: " + person.email
        phoneLabel.text = "Phone: " + person.phone
    }
}
