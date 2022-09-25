//
//  Functions.swift
//  iOS-Bootcamp-Week1
//
//  Created by Asım can Yağız on 23.09.2022.
//

import Foundation

struct Functions {
    
    
    //MARK: User Information Functions
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
    
    func userInformation (owner: User){
        print("""
                    Name: \(owner.name)  Class: \(owner.job)
                    Age: \(owner.age)    Gender: \(owner.gender)
                    DP: \(owner.dp)  HP: \(owner.hp)
                    Gold: \(owner.gold)
        """)
        print("****************************************")
    }
    
    //MARK: Bazaar functions
    func getWeapon(owner: User) -> Product{
        
        print(items.weapons[0].productImage)
        print(items.weapons[1].productImage)
        print(items.weapons[2].productImage)
        print("Which weapon would you choose? You can choose between 1 and 3")
        hint(owner: owner)
        
        let items = Items()
        
        var userChoice: Int? = nil
        userChoice = Int(readLine()!)
        
        if userChoice != nil {
            
            
            switch userChoice! {
            case 1:
                let selectedWeapon = items.weapons[0]
                selectedWeapon.addDp(owner: owner)
                selectedWeapon.addHp(owner: owner)
                selectedWeapon.decreaseGold(owner: owner)
                print("Your choice is wisely! Take this \(selectedWeapon.productName)")
                print("****************************************")
                return selectedWeapon
            case 2:
                let selectedWeapon = items.weapons[1]
                selectedWeapon.addDp(owner: owner)
                selectedWeapon.addHp(owner: owner)
                selectedWeapon.decreaseGold(owner: owner)
                print("Your choice is wisely! Take this \(selectedWeapon.productName)")
                print("****************************************")
                return selectedWeapon
            case 3:
                let selectedWeapon = items.weapons[2]
                selectedWeapon.addDp(owner: owner)
                selectedWeapon.addHp(owner: owner)
                selectedWeapon.decreaseGold(owner: owner)
                print("Your choice is wisely! Take this \(selectedWeapon.productName)")
                print("****************************************")
                return selectedWeapon
            default:
                return getWeapon(owner: owner)
            }
            
        } else {
            print("You can choose between 1 and 3")
            return getWeapon(owner: owner)
        }
        
    }
    
    
    func getShield(owner: User) -> Product{
        
        print(items.shields[0].productImage)
        print(items.shields[1].productImage)
        print(items.shields[2].productImage)
        print("Which shield would you choose? You can choose between 1 and 3")
        hint(owner: owner)
        
        let items = Items()
        
        var userChoice: Int? = nil
        userChoice = Int(readLine()!)
        
        if userChoice != nil {
            
            
            switch userChoice! {
            case 1:
                let selectedShield = items.shields[0]
                selectedShield.addDp(owner: owner)
                selectedShield.addHp(owner: owner)
                selectedShield.decreaseGold(owner: owner)
                print("Your choice is wisely! Take the \(selectedShield.productName)")
                print("****************************************")
                return selectedShield
            case 2:
                let selectedShield = items.shields[1]
                selectedShield.addDp(owner: owner)
                selectedShield.addHp(owner: owner)
                selectedShield.decreaseGold(owner: owner)
                print("Your choice is wisely! Take the \(selectedShield.productName)")
                print("****************************************")
                return selectedShield
            case 3:
                let selectedShield = items.shields[2]
                selectedShield.addDp(owner: owner)
                selectedShield.addHp(owner: owner)
                selectedShield.decreaseGold(owner: owner)
                print("Your choice is wisely! Take the \(selectedShield.productName)")
                print("****************************************")
                return selectedShield
            default:
                return getShield(owner: owner)
            }
            
        } else {
            print("You can choose between 1 and 3")
            return getShield(owner: owner)
        }
        
    }
    
    
    func getPet(owner: User) -> Product{
        
        print(items.pets[0].productImage)
        print(items.pets[1].productImage)
        print(items.pets[2].productImage)
        print("Which pet would you choose? You can choose between 1 and 3")
        hint(owner: owner)
        
        
        let items = Items()
        
        var userChoice: Int? = nil
        userChoice = Int(readLine()!)
        
        
        if userChoice != nil {
            
            
            switch userChoice! {
            case 1:
                let selectedPet = items.pets[0]
                selectedPet.addDp(owner: owner)
                selectedPet.addHp(owner: owner)
                selectedPet.decreaseGold(owner: owner)
                print("Your choice is wisely! Lovely \(selectedPet.productName)")
                print("****************************************")
                return selectedPet
            case 2:
                let selectedPet = items.pets[1]
                selectedPet.addDp(owner: owner)
                selectedPet.addHp(owner: owner)
                selectedPet.decreaseGold(owner: owner)
                print("Your choice is wisely! Lovely \(selectedPet.productName)")
                print("****************************************")
                return selectedPet
            case 3:
                let selectedPet = items.pets[2]
                selectedPet.addDp(owner: owner)
                selectedPet.addHp(owner: owner)
                selectedPet.decreaseGold(owner: owner)
                print("Your choice is wisely! Lovely \(selectedPet.productName)")
                print("****************************************")
                return selectedPet
            default:
                return getPet(owner: owner)
            }
            
        } else {
            print("You can choose between 1 and 3")
            return getPet(owner: owner)
        }
        
    }
    
    func hint(owner: User) {
        switch owner.job.lowercased() {
        case "warrior":
            print("Hint: Hey \(owner.job) first one is looks awesome!")
        case "archer":
            print("Hint: Hey \(owner.job) second one is looks awesome!")
        case "berserk":
            print("Hint: Hey \(owner.job) third one is looks awesome!")
        default:
            print("Go get a job")
        }
    }
    
    //MARK: Boss Fight functions
    
    func attack(enemy: BossKraken, owner: User) {

        
        var userMove: Int? = nil
        userMove = Int(readLine()!)
        
        if userMove != nil {
            switch userMove! {
            case 1:
                print("Dice is roll!")
                let damageDice = Int(arc4random_uniform(6) + 1)
                sleep(UInt32(1.0))
                print("Your damage dice is \(damageDice) DP will multiplier * \(damageDice)")
                let damage = owner.dp * damageDice
                enemy.hp -= damage
                print("""
                You hit the Kraken \(damage) DP
                Kraken current HP:\(enemy.hp)
                Your current HP:\(user.hp)
""")
                switch enemy.hp {
                case 500...1000:
                    sleep(UInt32(2.0))
                    print(enemy.bossImage)
                    return attack(enemy: enemy, owner: owner)
                case 200...500:
                    sleep(UInt32(2.0))
                    print(enemy.bossImage1)
                    return attack(enemy: enemy, owner: owner)
                case 1...200:
                    sleep(UInt32(2.0))
                    print(enemy.bossImage2)
                    return attack(enemy: enemy, owner: owner)
                case -1000...0:
                    sleep(UInt32(2.0))
                    print(enemy.bossImage3)
                    print("The End")
                    sleep(UInt32(2.0))
                    print("Dou you want play again 'yes' or 'no'")
                    let playGame = readLine()
                    
                    if playGame?.lowercased() == "yes" {
                        start()
                    } else {
                        print("Thank you for play the game")
                    }
                default:
                    print("The End")
                    sleep(UInt32(2.0))
                    print("Dou you want play again 'yes' or 'no'")
                    let playGame = readLine()
                    
                    if playGame?.lowercased() == "yes" {
                        start()
                    } else {
                        print("Thank you for play the game ")
                        start()
                    }
                    
                }
            case 2:
                print("Dice is roll!")
                let damageDice = Int(arc4random_uniform(6) + 1)
                sleep(UInt32(1.0))
                print("Kraken damage dice is \(damageDice) DP will multiplier * \(damageDice)")
                let damage = enemy.dp * damageDice
                owner.hp -= damage
                print("""
                Kraken hit you \(damage)
                Kraken current HP:\(enemy.hp)
                Your current HP:\(user.hp)
""")
                switch owner.hp {
                case 200...500:
                    sleep(UInt32(2.0))
                    print("1:ATTACK 2:ESCAPE")
                    return attack(enemy: enemy, owner: owner)
                case 1...200:
                    sleep(UInt32(2.0))
                    print("1:ATTACK 2:ESCAPE")
                    return attack(enemy: enemy, owner: owner)
                case -1000...0:
                    sleep(UInt32(2.0))
                    print("The End")
                    sleep(UInt32(2.0))
                    print("Dou you want play again 'yes' or 'no'")
                    let playGame = readLine()
                    
                    if playGame?.lowercased() == "yes" {
                        start()
                    } else {
                        print("Thank you for play the game ")
                        start()
                    }
                default:
                    print("The End")
                    sleep(UInt32(3.0))
                    print("Dou you want play again 'yes' or 'no'")
                    let playGame = readLine()
                    
                    if playGame?.lowercased() == "yes" {
                        start()
                    } else {
                        print("Thank you for play the game ")
                        start()
                    }
                    
                }
            default:
                print("Choose must be integer 1...2")
                return attack(enemy: enemy, owner: owner)
            }
        }
    }
    
}


