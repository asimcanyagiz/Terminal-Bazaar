//
//  Products.swift
//  iOS-Bootcamp-Week1
//
//  Created by Asım can Yağız on 24.09.2022.
//

import Foundation

struct Product {
    //MARK: Propery Values
    var productName: String
    var productImage: String
    var productSpecial: String
    var productCost: Int
    var productHp: Int
    var productDp: Int

    
    //MARK: Functions
    
    //Function for add dp to user with his item in lastly buyed bazaar
    func addDp(owner: User) {
        owner.dp += productDp
        if owner.job.lowercased() == productSpecial.lowercased() {
            owner.dp += 10
            print("True Choice! You gain extra 10 DP because you are \(owner.job)")
        }
    }
    //Function for add hp to user with his item in lastly buyed bazaar
    func addHp(owner: User) {
        owner.hp += productDp
        if owner.job.lowercased() == productSpecial.lowercased() {
            owner.hp += 10
            print("Well done! You gain extra 10 HP because you are \(owner.job)")
        }
    }
    //Function for decrease gold to user with his item in lastly buyed bazaar
    func decreaseGold(owner: User) {
        owner.gold -= productCost
    }
    
    
    
}
