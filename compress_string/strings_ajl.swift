//
//  strings_ajl.swift
//  Check_Palindrome
//
//  Created by Andrew Lewis on 7/6/18.
//  Copyright © 2018 Andrew Lewis. All rights reserved.
//

// custom class for handling strings.
import Foundation

class strings_ajl{
    
    // returns character of desired index
    func character(stringIndex: Int, stringInput: String)->Character{
        
        if(stringIndex > stringInput.count-1){
            print("string index is out of range")
            return "0"
        }
    
        var chars = [Character]()
        
        for letters in stringInput.indices {
            chars.append(stringInput[letters])
        }
        
        let char = chars[stringIndex-1]
        
        return char
    }
}
