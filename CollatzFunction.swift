//
//  CollatzFunction.swift
//  EulerApp
//
//  Created by Ryan Cornel on 3/17/21.
//

import Foundation
import UIKit


func sequence() {
  
  var sequence : [Int] = []
  var number : Int = 95 //Int(textField.text)
    
  while number != 1 {
    
    if (number % 2 == 0){
    
    number = number / 2
    sequence.append(number)
    
   } else {

    number = 3 * number + 1
    sequence.append(number)
     
    }
  }
  
    
  print (sequence)
  print ("There are \(sequence.count) indexes in this array.")
  return
  
}


