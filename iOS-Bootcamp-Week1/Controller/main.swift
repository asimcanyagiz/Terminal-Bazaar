//
//  main.swift
//  iOS-Bootcamp-Week1
//
//  Created by Asım can Yağız on 23.09.2022.
//

import Foundation

var fun = Functions()
var items = Items()


//MARK: START
//This function for start the app
func start() {
    print("Dou you want a play game 'yes' or 'no'")
    let playGame = readLine()
    
    if playGame?.lowercased() == "yes" {
    } else {
        print("Welcome to our secret bazaar. If you want join the this adventure you need the write 'yes' ")
        start()
    }
}
start()



//MARK: USER INFORMATION
//This are will help us to take informations about user
var name: String
var age: Int
var gender: String
var job: String

name = fun.getUserName()
age = fun.getUserAge()
gender = fun.getUserGender()
job = fun.getUserJob()
let user = User(name: name, age: age, gender: gender, job: job)
fun.userInformation(owner: user)




//MARK: Bazaar/Market
//With get functions we build array for user bazaar items
func bazaarOnlineShoppingProcess(){
    user.userBasket.append(fun.getWeapon(owner: user).productName)
    user.userBasket.append(fun.getShield(owner: user).productName)
    user.userBasket.append(fun.getPet(owner: user).productName)
    print("Your basket: \(user.userBasket)")
    print("Total Cost: \(1000 - user.gold) Gold")
    user.userConfirmPayment()
}
bazaarOnlineShoppingProcess()
fun.userInformation(owner: user)



//MARK: BOSS FIGHT
//Boss fight area for use items user buyed before
func bossFight() {
    let boss = BossKraken(name: "Kraken", age: 1000, gender: "Octopus", job: "Octopus")
    boss.hp = 1000
    boss.dp = 30
    
    sleep(UInt32(1))
    print("GRRRRRRRRRRR")
    sleep(UInt32(1.6))
    print("OH NO RUN!!!!!")
    sleep(UInt32(2))
    print(boss.bossImage)
    
    fun.attack(enemy: boss, owner: user)

}
bossFight()

