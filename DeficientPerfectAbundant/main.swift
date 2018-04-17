//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

var validInput : Int = 0 // so it can take  the value of givenInput, when we declare that validInput = givenInput

 while 1==1 {
    
    // prompt the user
    print("Input number is?")
    
    
    // make sure that there is no nil
    // Wait for input
    guard let givenInput = readLine () else {
        
        // If we got here, input is nil
        // prompt again
        continue // continue with the next iteration with while loop
        
        
}
    
    guard let integerInput = Int (givenInput) else {
       continue  // checking it, so only numbers will pass
    }
    
    if integerInput < 1 || integerInput > 32500 {
        continue
    }
    
validInput = integerInput
    break
    
}

var n = validInput

var add = 1

if  n / 1 == 1 {   // to prove that 1 is deficient as 1 cannot divide by 1. The sum is 0. value of number > sum of dividers (none or 0)
    for i in n...n/1  {
        if n % i == 0 {
        add -= 1
        }
        break // so wont continue forever
    }
} else {

            for i in 2...n/2 {
                
                
                //basically 12%2=0, 12%3=0, 12%5=2 So 1+2+3... till 6 (12%6=0).
                if n % i == 0 {  // i is divider, n is 12 (random number more than 1 and less than 32500)
                    
                    add += i     // add dividers
                   
                    
                }

            }
            
}

        
        
        
if n == add {
    print(n, "is a perfect")
} else if n > add {
    print(n, "is a deficient")
} else if n < add {
    print(n,"is an abundant")
}



