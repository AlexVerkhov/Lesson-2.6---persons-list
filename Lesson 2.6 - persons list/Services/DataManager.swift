//
//  DataManager.swift
//  Lesson 2.6 - persons list
//
//  Created by Алексей Верховых on 23.03.2022.
//

class DataManager {
    
    private var names: [String]
    private var surnames: [String]
    private var emails: [String] = []
    private var phones: [String] = []
    
    
    init() {
        names = [
            "Alexey",
            "Dmitry",
            "Egor",
            "Vasiliy",
            "Oleg",
            "Viktor",
            "Vladislav"
        ]
        
        surnames = [
            "Gladkov",
            "Kurchenko",
            "Vlasov",
            "Stepanenko",
            "Verkhovykh",
            "Gurchenko",
            "Voevoda",
            "Lantcev",
            "Baranov",
            "Golub",
            "Belov",
            "Krasnov",
            "Nikitenko"
        ]
        
        for _ in (0...30) {
            emails.append(randomEmail())
            phones.append(randomPhone())
        }
    }
    
    
    func getRandomUnicPersons(count: Int) -> [Person] {
        
        var persons: [Person] = []
        for _ in (0..<count) {
            var newPerson = getRandomPerson()
            var attempts = 100
            
            while persons.contains(newPerson), attempts > 0 {
                newPerson = getRandomPerson()
                attempts -= 1
            }
            
            if attempts == 0 {
                print("За 100 попыток не удалось создать новую уникальную структуру Person. Не гарантируется полное заполнение массива структур Person")
            } else {
                persons.append(newPerson)
            }
        }
        return persons
    }
    
    
    func getRandomPerson() -> Person {
        Person(
            name: names.randomElement()!,
            surname: surnames.randomElement()!,
            email: emails.randomElement()!,
            phone: phones.randomElement()!
        )
    }
    
    
    private func randomEmail() -> String {
        
        let symbols = "abcdefghijklmnopqrstuvwxyz"
        let domains = [
            "gmail.com",
            "yahoo.com",
            "bing.com"
        ]
        
        var bodyLength = Int.random(in: 3...7)
        var emailBody = ""
        
        while bodyLength > 0 {
            emailBody.append(symbols.randomElement() ?? "a")
            bodyLength -= 1
        }
        
        return emailBody + "@" + (domains.randomElement() ?? "gmail.com")
    }
    
    
    private func randomPhone() -> String {
        String(Int.random(in: 79000000000...79999999999))
    }
}
