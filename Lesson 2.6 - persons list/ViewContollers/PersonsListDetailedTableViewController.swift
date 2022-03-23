//
//  PersonsListDetailedTableViewController.swift
//  Lesson 2.6 - persons list
//
//  Created by Алексей Верховых on 24.03.2022.
//

import UIKit

class PersonsListDetailedTableViewController: PersonsListTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
}


extension PersonsListDetailedTableViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {}
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullname
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.image = UIImage(systemName: "phone")
            content.text = person.phone
        } else {
            content.image = UIImage(systemName: "tray")
            content.text = person.email
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
