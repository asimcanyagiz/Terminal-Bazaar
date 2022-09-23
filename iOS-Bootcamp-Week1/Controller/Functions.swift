//
//  Functions.swift
//  iOS-Bootcamp-Week1
//
//  Created by Asım can Yağız on 23.09.2022.
//

import Foundation

struct Functions {
    
    
    
    func getUserName () -> String{
        print("Choice your name visely!")
        
        let userName = readLine()!
        
        if userName != "" {
            print("Welcome to bazaar \(userName)")
            print("****************************************")
            return userName
        } else {
            print("Name must be string!")
            return getUserName()
        }
        
    }
    
    func getUserAge () -> Int{
        print("How old are you?")
        
        var userAge: Int? = nil
        userAge = Int(readLine()!)
        
        if userAge != nil {
            print("****************************************")
            return userAge!
        } else {
            print("Age must be Integer")
            return getUserAge()
        }
        
    }
    
    func getUserGender () -> String{
        print("Are you 'Male' or 'Female'?")
        
        let userGender = readLine()!
        
        if userGender != "" {
            if userGender.lowercased() == "male" || userGender.lowercased() == "female" {
                print("****************************************")
                return userGender
            } else {
                print("Gender must be 'Male' or 'Female'")
                return getUserGender()
            }
        } else {
            print("Gender must be string!")
            return getUserGender()
        }
        
    }
    
    func getUserJob() -> String {
        
        print("Choice your class! 1:'Warrior', 2:'Archer', 3:'Berserk'")
        let userJob = readLine()!
        
        if userJob.lowercased() == "warrior" || userJob.lowercased() == "archer" || userJob.lowercased() == "berserk" {
            print("****************************************")
            return userJob
        } else {
            print("You can only choise one of them")
            return getUserJob()
        }

    }
    
    
}


