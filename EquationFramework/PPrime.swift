//
//  PPrime.swift
//  EquationFramework
//
//  Created by Kristaps Brēmers on 24.04.19.
//  Copyright © 2019. g. Chili. All rights reserved.
//

public protocol PPrime {
    func checkPrime(number: Int, with completionHandler: @escaping (Bool) -> Void)
}

extension PPrime {
    
    /// dslkmsldflds
    ///
    /// - Parameters:
    ///   - number: lklkds
    ///   - completionHandler: kds
    public func checkPrime(number: Int, with completionHandler: @escaping (Bool) -> Void) {
        
        if number <= 1 {
            completionHandler(false)
            return
        }
        if number == 2 {
            completionHandler(true)
            return
        }
        
        for prime in 2...number - 1 {
            if number % prime == 0 {
                completionHandler(false)
                return
            }
        }
        completionHandler(true)
    }
}
