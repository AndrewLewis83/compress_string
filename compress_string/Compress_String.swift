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
        var position = 2
        var count = 1
        
        for letters in userInput.indices {
            
            if userInput[letters] == myStringClass.character(stringIndex: position, stringInput: userInput){
                count += 1
            }else if count > 1{
                compressedString.append(userInput[letters])
                compressedString.append("\(count)")
                count = 1
            }else{
                compressedString.append(userInput[letters])
                count = 1
            }
            
            position += 1
            
            
        }
        
        return compressedString
    }
}
