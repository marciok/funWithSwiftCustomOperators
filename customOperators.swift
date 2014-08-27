//
//  customOperators.swift
//  
//
//  Created by Marcio Klepacz on 8/24/14.
//
//

import Foundation
import Cocoa

operator postfix ♂ {}
@postfix func ♂ (name: String) -> Bool {
    switch name {
    case "Stalone", "Chuck Norris", "Volvo":
        
        return true
    default:
        
        return false;
    }
}

operator postfix ♀ {}
@postfix func ♀ (name: String) -> Bool {
    switch name {
    case "Taylor Swift", "Justin Bieber", "Jessica Alba":
        
        return true
    default:
        
        return false;
    }
}

operator prefix ♻︎ {}
@prefix func ♻︎<T>(var list: Array<T>) -> Array<T> {
    for i in 0..list.count {
        let j = Int(arc4random_uniform(UInt32(list.count - i))) + i
        list.insert(list.removeAtIndex(j), atIndex: i)
    }
    
    return list
}

operator infix ❤︎ {}
@infix func ❤︎(loveBird: String, sweetHeart: String) -> String {
    
    return "\(loveBird) and \(sweetHeart) walking the park holding hands"
}

operator postfix ⌃ {}
@postfix func ⌃(stringToUp: String) -> String {
    
    return stringToUp.uppercaseString
}

operator postfix ⌄ {}
@postfix func ⌄(stringToDown: String) -> String {
    
    return stringToUp.lowercaseString
}


