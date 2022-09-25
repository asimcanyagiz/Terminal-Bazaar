//
//  Items.swift
//  iOS-Bootcamp-Week1
//
//  Created by Asım can Yağız on 24.09.2022.
//

import Foundation

struct Items {
    
    let weapons = [
        Product(productName: "Sword",
                productImage: """
        #
    O%%%%#============--
        #
    HP:0 DP:40
      1:SWORD
""",
                productSpecial: "Warrior",
                productCost: 33,
                productHp: 0,
                productDp: 40),
        
        Product(productName: "Bow",
                productImage: """
                                    )
                                ##-------->
                                    )
                                HP:0 DP:20
                                   2:BOW
""",
                productSpecial: "Archer",
                productCost: 29,
                productHp: 0,
                productDp: 20),
        
        Product(productName: "Axe",
                productImage: """
                                                                 +-+
                                                    =============| |
                                                                `:_;'
                                                    HP:0 DP:80
                                                        3:AXE
""",
                productSpecial: "Berserk",
                productCost: 70,
                productHp: 0,
                productDp: 80)
    ]
    let shields = [
        Product(productName: "Shield of Man",
                productImage: """

    |`-._<>_.-`|
    |    ||    |
    |___o()o___|
    |__((<>))__|
    (   o()o   )
     (   ||   )
      (  ||  )
       '.||.'
      HP:10 DP:10
    1:Shield of Man
""",
                productSpecial: "Warrior",
                productCost: 43,
                productHp: 10,
                productDp: 10),
        
        Product(productName: "Shield of Kergit",
                productImage: """
                                _..._
                            .-'_.---._'-.
                             ||####|(__)|
                             ((####|(**))
                             '(###|_''/'
                               ((|##//
                               \\ |#//
                                L.J
                                 "
                                HP:60 DP:20
                            2:Shield of Kergit
""",
                productSpecial: "Archer",
                productCost: 33,
                productHp: 60,
                productDp: 20),
        
        Product(productName: "Shild of Giant",
                productImage: """
                                                    ] --__________-- [
                                                    |       ||       |
                                                     [      ||      ]
                                                     |______||______|
                                                     |------..------|
                                                     ]      ||      [
                                                       [    ||    ]
                                                        [   ||   ]
                                                         (__||__)
                                                        HP:5 DP:5
                                                     3:Shield of Giant
""",
                productSpecial: "Berserk",
                productCost: 10,
                productHp: 5,
                productDp: 5)
    ]
    let pets = [
        Product(productName: "Dragon",
                productImage: """
        \\ \\
        ) \\ \\    _p_
          |)^))))  (  *)
         }_|| || / /^`-'
 __       -}}|--/ /
<'  \\___/   ___. )'
    `====| )___/\\
        //     `"
        \\    /  \

        HP:0 DP:100
         1:DRAGON
""",
                productSpecial: "Warrior",
                productCost: 23,
                productHp: 0,
                productDp: 100),
        
        Product(productName: "Gryphon",
                productImage: """
                             |    (  ^_^  )    |
                            |  {   '('v')'   }  |
                            |   {   (   )   }   |
                            |_)(   ()   ()   )(_|
                            |)  (_ | (|)  |_)  (|

                                HP:100 DP:60
                                   2:GRYPHON
""",
                productSpecial: "Archer",
                productCost: 37,
                productHp: 100,
                productDp: 60),
        
        Product(productName: "Phoenix",
                productImage: """
                                                                      _,     ,_
                                                                     .'(  ,_   )'.
                                                                    |  |__( >__|  |
                                                                    (            )
                                                                     '-..__ __..-'
                                                                          /_\
        
                                                                        HP:0 DP:65
                                                                        3:PHOENIX
""",
                productSpecial: "Berserk",
                productCost: 19,
                productHp: 0,
                productDp: 65)
    ]
}
