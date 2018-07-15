//
//  Compress_String.swift
//  compress_string
//
//  Created by Andrew Lewis on 7/14/18.
//  Copyright © 2018 Andrew Lewis. All rights reserved.
//

import Foundation

class Compress_String {
    
    let inputOutput = IO()
    let myStringClass = strings_ajl()
    
    func startingPoint() {
        print("Please enter a string")
        let userInput = inputOutput.getInput()
        
        let compressedString = compressString(userInput: userInput)
        
        print("The string you entered, " + userInput + ", was compressed down to " + compressedString)
    }
    
    func compressString(userInput:String)->String{
        
        var compressedString = ""
        var count = 1
        
        var char = myStringClass.character(stringIndex: 0, stringInput: userInput)
        
        for letters in 1...userInput.count {
            
            if myStringClass.character(stringIndex: letters, stringInput: userInput) == myStringClass.character(stringIndex: letters-1, stringInput: userInput){
                count += 1
            }else if count > 1{
                compressedString.append(char)
                compressedString.append("\(count)")
                char = myStringClass.character(stringIndex: letters, stringInput: userInput)
                count = 1
            }else{
                compressedString.append(char)
                char = myStringClass.character(stringIndex: letters+1, stringInput: userInput)
                count = 1
            }
        }
        
        return compressedString
    }
}
