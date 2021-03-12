//
//  Sequence.swift
//  EulerApp
//
//  Created by Ryan Cornel on 3/12/21.
//

import Foundation
import UIKit

class SwipeLeftPopUp: UIView {

func sequence() {
  
  var sequence : [Int] = []
  
  var number : Int = 5
  
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
    
    
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    
    } 

}

