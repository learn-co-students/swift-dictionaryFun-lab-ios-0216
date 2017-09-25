//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream = ["Joe" : "Peanut Butter and Chocolate",
                                     "Tim" : "Natural Vanilla",
                                     "Sophie" : "Mexican Chocolate",
                                     "Deniz" : "Natural Vanilla",
                                     "Tom" : "Mexican Chocolate",
                                     "Jim" : "Natural Vanilla",
                                     "Susan" : "Cookies 'N' Cream"]
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var names = [String]()
        for (name, iceCreamFlavor) in favoriteFlavorsOfIceCream {
            if iceCreamFlavor == flavor {
                names.append(name)
            }
        }
        return names
    }
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        return names(forFlavor: flavor).count
    }
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        return favoriteFlavorsOfIceCream[person]
    }
    
    // 5.
    func replace(flavor: String, forPerson person: String ) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        } else {
            return false
        }
    }
    
    // 6.
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream.keys.contains(person) {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        } else {
            return false
        }
    }
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            return false
        } else {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
    }
    
    // 9.
    func attendeeList() -> String {
        var iceCreamList = String()
        let allNames = favoriteFlavorsOfIceCream.keys.sorted()
        for (index, name) in allNames.enumerated() {
            if let flavor = favoriteFlavorsOfIceCream[name] {
                if index == allNames.count - 1 {
                    let iceCreamString = "\(name) likes \(flavor)"
                    iceCreamList.append(iceCreamString)
                } else {
                    let iceCreamString = "\(name) likes \(flavor)\n"
                    iceCreamList.append(iceCreamString)
                }
            }
        }
        return iceCreamList
    }
}
