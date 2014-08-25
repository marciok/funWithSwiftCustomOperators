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
operator postfix ♀ {}
operator prefix ♻︎ {}
operator infix ❤︎ {}
operator postfix ⌃ {}
operator postfix ⌄ {}


@postfix func ♂ (name: String) -> Bool {
    switch name {
    case "Stalone", "Chuck Norris", "Volvo":
        
        return true
    default:
        
        return false;
    }
}

@postfix func ♀ (name: String) -> Bool {
    switch name {
    case "Taylor Swift", "Justin Bieber", "Jessica Alba":
        
        return true
    default:
        
        return false;
    }
}

@prefix func ♻︎<T>(var list: Array<T>) -> Array<T> {
    for i in 0..list.count {
        let j = Int(arc4random_uniform(UInt32(list.count - i))) + i
        list.insert(list.removeAtIndex(j), atIndex: i)
    }
    
    return list
}

@infix func ❤︎(loveBird: String, sweetHeard: String) -> String {
    
    return "\(loveBird) and \(sweetHeard) walking the park holding hands"
}

@postfix func ⌃(stringToUp: String) -> String {
    
    return stringToUp.uppercaseString
}

@postfix func ⌄(stringToDown: String) -> String {
    
    return stringToUp.lowercaseString
}


