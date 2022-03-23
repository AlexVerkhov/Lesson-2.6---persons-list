//
//  ViewController.swift
//  Lesson 2.6 - persons list
//
//  Created by Алексей Верховых on 23.03.2022.
//

import UIKit

class PersonsListTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // хранить данные в таб контроллере не вижу смысла
        // также инициализирую класс дата менеджер для нормальной генерации
        // вариантов на ходу, чтобы не создавать множество статических методов и свойств
        
        let dataManager = DataManager()
        pushDataToChildren(persons: dataManager.getRandomUnicPersons(count: 20))
    }
    
    private func pushDataToChildren(persons: [Person]) {
        for childIndex in (0..<children.count) {
            if let navigationController = children[childIndex] as? UINavigationController {
                if let personsListTableViewController = navigationController.topViewController as? PersonsListTableViewController {
                    personsListTableViewController.persons = persons
                } else if let personsListDetailedTableViewController = navigationController.topViewController as? PersonsListDetailedTableViewController {
                    personsListDetailedTableViewController.persons = persons
                }
            }
        }
    }
}

