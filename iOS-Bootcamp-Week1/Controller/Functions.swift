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
        
        print("Choice your class! 'Warrior', 'Archer', 'Berserk'")
        let userJob = readLine()!
        
        if userJob.lowercased() == "warrior" || userJob.lowercased() == "archer" || userJob.lowercased() == "berserk" {
            print("****************************************")
            return userJob
        } else {
            print("You can only choise one of them")
            print("Class must be string!")
            return getUserJob()
        }

    }
    
    
    func getWeapon() -> String{
        
        print(items.weapons[0].productImage)
        print(items.weapons[1].productImage)
        print(items.weapons[2].productImage)
        print("Which weapon would you choose? You can choose between 1 and 3")
        
        let items = Items()
        
        var userChoice: Int? = nil
        userChoice = Int(readLine()!)
        
        if userChoice != nil {
            
            var selectedWeapon: String
            
            switch userChoice! {
            case 1:
                selectedWeapon = items.weapons[0].productName
                print("Your choice is wisely! Take this \(selectedWeapon)")
                print("****************************************")
                return selectedWeapon
            case 2:
                selectedWeapon = items.weapons[1].productName
                print("Your choice is wisely! Take this \(selectedWeapon)")
                print("****************************************")
                return selectedWeapon
            case 3:
                selectedWeapon = items.weapons[2].productName
                print("Your choice is wisely! Take this \(selectedWeapon)")
                print("****************************************")
                return selectedWeapon
            default:
                return getWeapon()
            }
            
        } else {
            print("You can choose between 1 and 3")
            return getWeapon()
        }
        
    }
    
    
    func getShield() -> String{
        
        print(items.shields[0].productImage)
        print(items.shields[1].productImage)
        print(items.shields[2].productImage)
        print("Which shield would you choose? You can choose between 1 and 3")
        
        let items = Items()
        
        var userChoice: Int? = nil
        userChoice = Int(readLine()!)
        
        if userChoice != nil {
            
            var selectedShield: String
            
            switch userChoice! {
            case 1:
                selectedShield = items.shields[0].productName
                print("Your choice is wisely! Take the \(selectedShield)")
                print("****************************************")
                return selectedShield
            case 2:
                selectedShield = items.shields[1].productName
                print("Your choice is wisely! Take the \(selectedShield)")
                print("****************************************")
                return selectedShield
            case 3:
                selectedShield = items.shields[2].productName
                print("Your choice is wisely! Take the \(selectedShield)")
                print("****************************************")
                return selectedShield
            default:
                return getShield()
            }
            
        } else {
            print("You can choose between 1 and 3")
            return getShield()
        }
        
    }
    
    
    func getPet() -> String{
        
        print(items.pets[0].productImage)
        print(items.pets[1].productImage)
        print(items.pets[2].productImage)
        print("Which pet would you choose? You can choose between 1 and 3")
        
        let items = Items()
        
        var userChoice: Int? = nil
        userChoice = Int(readLine()!)
        
        if userChoice != nil {
            
            var selectedPet: String
            
            switch userChoice! {
            case 1:
                selectedPet = items.pets[0].productName
                print("Your choice is wisely! Lovely \(selectedPet)")
                print("****************************************")
                return selectedPet
            case 2:
                selectedPet = items.pets[1].productName
                print("Your choice is wisely! Lovely \(selectedPet)")
                print("****************************************")
                return selectedPet
            case 3:
                selectedPet = items.pets[2].productName
                print("Your choice is wisely! Lovely \(selectedPet)")
                print("****************************************")
                return selectedPet
            default:
                return getPet()
            }
            
        } else {
            print("You can choose between 1 and 3")
            return getPet()
        }
        
    }
}


