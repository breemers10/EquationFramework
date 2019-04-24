//
//  Loggers.swift
//  EquationFramework
//
//  Created by Kristaps Brēmers on 24.04.19.
//  Copyright © 2019. g. Chili. All rights reserved.
//

public class Loggers: PLoggers {
    required public init() { }
    
    /// Print the action to console.
    /// Method prints depending on the action made.
    ///
    /// - Parameters:
    ///   - first: First number in equation (Integer)
    ///   - second: Second number in equation (Integer)
    ///   - action: 4 cases of actions: .adds, .subtracts, .multiplies, .divides
    ///   - result: Result of the equation
    
    public func log(_ first: Int, _ second: Int, _ action: Actions) {
        let equation = "\(first) \(getAction(action)) \(second) = \(getResult(from: first, second, withAction: action))"
        
        print(equation)
    }
    
    public func printText(_ text: String) {
        print(text)
    }
}
