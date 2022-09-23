//
//  main.swift
//  iOS-Bootcamp-Week1
//
//  Created by Asım can Yağız on 23.09.2022.
//

import Foundation

var fun = Functions()

func start() {
    print("Dou you want a play game 'yes' or 'no'")
    let playGame = readLine()
    
    
    //MARK: User informations
    var name: String
    var age: Int
    var gender: String
    var job: String
    
    
    if playGame?.lowercased() == "yes" {
        //MARK: Loop for take information from user
        name = fun.getUserName()
        age = fun.getUserAge()
        gender = fun.getUserGender()
        job = fun.getUserJob()
        var user = User(name: name, age: age, gender: gender, job: job)
        print("Name: \(name) Age: \(age) Gender: \(gender) Job: \(job)")
        
        
        
    } else {
        print("Welcome to our secret bazaar. If you want join the this adventure you need the write 'yes' ")
        start()
    }
}
start()
