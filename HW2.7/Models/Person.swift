//
//  Person.swift
//  HW2.7
//
//  Created by Алексей Маслобоев on 18.02.2020.
//  Copyright © 2020 Алексей Маслобоев. All rights reserved.
//

struct Person {
    
    var name: String
    var surname: String
    var email: String
    var phone: String
    
    var fullName: String {
        "\(surname) \(name)"
    }
}

extension Person {
    
    static func getPersons() -> [Person] {
        let surnames = getSurnames().shuffled()
        let names = getNames().shuffled()
        let phones = getPhones().shuffled()
        let emails = getEmails().shuffled()
        
        var persons: [Person] = []
        for index in 0 ..< surnames.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            persons.append(person)
        }
        return persons
    }
    
    private static func getSurnames() -> [String] {
        [
            "Ivanov",
            "Petrov",
            "Sidorov",
            "Sergeev",
            "Mask",
            "Davidov",
            "Izmailov"
        ]
    }
    
    private static func getNames() -> [String] {
        [
            "Aleksei",
            "Ivan",
            "Sergey",
            "Dmitriy",
            "Aleksandr",
            "Igor",
            "Oleg"
        ]
    }
    
    private static func getEmails() -> [String] {
        [
            "one@gmail.com",
            "two@gmail.com",
            "three@gmail.com",
            "four@gmail.com",
            "five@gmail.com",
            "six@gmail.com",
            "seven@gmail.com"
        ]
    }
    
    private static func getPhones() -> [String] {
        [
            "+7-999-111-11-11",
            "+7-999-111-11-22",
            "+7-999-111-11-33",
            "+7-999-111-11-44",
            "+7-999-111-11-55",
            "+7-999-111-11-66",
            "+7-999-111-11-77"
        ]
    }
}
