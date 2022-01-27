//
//  TwoStrings.swift
//  UnitTest-intro
//
//  Created by David Svensson on 2022-01-27.
//

import Foundation

class TwoStrings {
    var one : String
    var two : String
    
    init(one: String, two: String) {
        self.one = one
        self.two = two
    }
    
    func concatonate() -> String {
        return one + two
    }
    
    
    func subtract() -> String {

        if two.count >= one.count {
            return ""
        }

        let index = one.index(one.startIndex, offsetBy: two.count)
        
        let substring = one.suffix(from: index)
        //let substring = one.suffix(two.count)

        return String(substring)
    }
    
    func subtract2() -> String {
        if (one.count > two.count){
            for  _ in 1...two.count {
                one.removeFirst()
            }
            return one
        } else{
            return ""
        }
    }
    
}

