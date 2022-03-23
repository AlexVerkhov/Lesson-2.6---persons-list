//
//  Person.swift
//  Lesson 2.6 - persons list
//
//  Created by Алексей Верховых on 23.03.2022.
//

struct Person: Equatable {

    var name: String
    var surname: String
    
    var email: String
    var phone: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}
