//
//  User.swift
//  iOS-Bootcamp-Week1
//
//  Created by Asım can Yağız on 23.09.2022.
//

import Foundation

class User {
    //MARK: Property Values
    //User informations
    var name: String
    var age: Int
    var gender: String
    var job: String
    var gold = 1000
    var hp = 50
    var dp = 10
    var userBasket: [String] = []
    
    
    init(name: String, age: Int, gender: String, job: String) {
        self.name = name
        self.age = age
        self.gender = gender
        self.job = job
    }
    

    
    //MARK: METHODS
    //Function for bazaar. With this functions user can be buy all the items or re select items.
    func userConfirmPayment() {
        print("Are you sure you want to buy them all? 'yes' or 'no'")
        let userConfirm = readLine()
        
        if userConfirm?.lowercased() == "yes" {
            
            print("Did you have promotion code? 'yes' or 'no'")
            print("Hint: Maybe your promotion code is 'pazarama' :)")
            
            //Promotion code for buy
            let userPromotionCode = readLine()
            if userPromotionCode?.lowercased() == "yes" {
                
                print("Write your promotion code:")
                let userPromotionCodeConfirm = readLine()
                if userPromotionCodeConfirm?.lowercased() == "pazarama" {
                    self.gold = 1000
                    print("""
                    Thank you! We dont accept your money here. Your current Gold:\(self.gold) HP:\(self.hp) DP:\(self.dp)
                    HAYATI KOLAYLASTIRAN YENI DIJITAL PLATFORM: PAZARAMA
                    https://www.pazarama.com
""")
                    print("****************************************")
                } else {
                    print("Sorry your code is invalid!")
                    print("Thank you! Your current Gold:\(self.gold) HP:\(self.hp) DP:\(self.dp)")
                    print("****************************************")
                }
                
                    
            } else {
                print("Thank you! Your current Gold:\(self.gold) HP:\(self.hp) DP:\(self.dp)")
                print("****************************************")
            }
        } else if userConfirm?.lowercased() == "no" {
            print("Write 'ok' if you are sure to startover")
            let userConfirm = readLine()
            if userConfirm?.lowercased() == "ok"{
                user.userBasket.removeAll()
                bazaarOnlineShoppingProcess()
            } else {
                userConfirmPayment()
            }
        } else {
            userConfirmPayment()
        }
    }
}
