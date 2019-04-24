//
//  FrameworkClass.swift
//  EquationFramework
//
//  Created by Kristaps Brēmers on 24.04.19.
//  Copyright © 2019. g. Chili. All rights reserved.
//

public class FrameworkClass: PActions {
    public var logger: PLoggers
    
    public init(with logger: PLoggers) {
        self.logger = logger
    }
    
    /// Performing an action.
    /// To perform either addition, subtraction, multiplication or division.
    /// Use exact action for whatever you are ought to do.
    /// - Parameters:
    ///   - action: 4 cases of actions: .adds, .subtracts, .multiplies, .divides
    ///   - firstNumber: First number in your equation (Integer)
    ///   - secondNumber: Second number in your equation (Integer)
    
    public func perform(action: Actions, firstNumber: Int, secondNumber: Int) {
        switch action {
            
        case .adds:
            logger.log(firstNumber, secondNumber, action)
            
        case .subtracts:
            logger.log(firstNumber, secondNumber, action)
            
        case .multiplies:
            logger.log(firstNumber, secondNumber, action)
            
        case .divides:
            logger.log(firstNumber, secondNumber, action)
        }
    }
}
