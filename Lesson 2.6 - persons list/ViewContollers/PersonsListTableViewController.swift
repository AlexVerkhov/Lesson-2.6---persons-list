//
//  PersonsListTableViewController.swift
//  Lesson 2.6 - persons list
//
//  Created by Алексей Верховых on 24.03.2022.
//

import UIKit

class PersonsListTableViewController: UITableViewController {
    
    var persons: [Person]!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personePageViewController = segue.destination as? PersonePageViewController else { return }
        guard let person = sender as? Person else { return }
        personePageViewController.person = person
    }
}


extension PersonsListTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = persons[indexPath.row]
        performSegue(withIdentifier: "personPageShowSegue", sender: person)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullname
        cell.contentConfiguration = content
        
        return cell
    }
}
