//
//  Extensions.swift
//  Extensions
//
//  Created by Raquel Rahmey on 2/9/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    func whisper()-> String{
        return self.lowercased()
    }
    
    func shout()-> String{
        return self.uppercased()
    }
    
    var pigLatin:String {
        var pigWord = String()
        if self.characters.count == 1 {
            return self
        } else {
            let pigArray = self.components(separatedBy: " ")
            var temporaryWord:[String] = []
            for word in pigArray {
                let wordCharacter = word.characters
                for letter in wordCharacter{
                    temporaryWord.append(String(letter))}
                let firstLetter = temporaryWord.remove(at: 0)
                let secondLetter = temporaryWord.remove(at: 0)
                let secondHalf = temporaryWord
                pigWord += secondLetter.uppercased()
                for letters in secondHalf{
                    pigWord += letters
                }
                pigWord += firstLetter.lowercased()
                pigWord += "ay"
                pigWord += " "
                temporaryWord = []
            }
            return pigWord
        }
    }
        var points: Int {
            var totalPoints = 0
            var toBegin = self.lowercased()
            for letter in toBegin.characters {
                if String(letter) == "a" || String(letter) == "e" || String(letter) ==  "i" || String(letter) == "o" || String(letter) == "u" || String(letter) == "y"{
                    totalPoints += 2
                } else if letter == " " {
                    totalPoints == totalPoints
                } else {
                    totalPoints += 1
                }
                
            }
            return totalPoints
        }
    
}


extension Int {
    func half() -> Int {
        return self/2
    }
    
    func isDivisible(by number:Int) -> Bool{
        if self % number == 0 {
            return true
        } else {
            return false
        }
    }
    
    var squared:Int {
        return self * self
    }
    
    var halved : Int {
        return self.half()
    }
}

extension String {
    
    var unicornLevel: String {
        var stringArray : [Character] = []
        var newString: String = ""
        for letter in self.characters {
            stringArray.append(letter)
            print(stringArray)
        }
        for letter in stringArray {
            if letter == " " {
                newString += " "
            } else {
                newString += "🦄"
            }
        }
        return newString
        
    }
}














