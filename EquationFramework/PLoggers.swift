//
//  PLoggers.swift
//  EquationFramework
//
//  Created by Kristaps Brēmers on 24.04.19.
//  Copyright © 2019. g. Chili. All rights reserved.
//

public protocol PLoggers {
    func log(_ first: Int, _ second: Int, _ action: Actions)
    
    func writeToFile(first: Int, second: Int, action: Actions)
}

extension PLoggers {
    
    public func writeToFile(first: Int, second: Int, action: Actions) {
        let equation = "\(first) \(getAction(action)) \(second) = \(getResult(from: first, second, withAction: action))"
        
        let fileName = "text"
        let dir = try? FileManager.default.url(for: .desktopDirectory,
                                               in: .userDomainMask, appropriateFor: nil, create: true)
        
        if let fileURL = dir?.appendingPathComponent(fileName).appendingPathExtension("txt") {
            
            do {
                try equation.write(to: fileURL, atomically: true, encoding: .utf8)
            } catch {
                print("Failed writing to URL: \(fileURL), Error: " + error.localizedDescription)
            }
            
            var inString = ""
            do {
                inString = try String(contentsOf: fileURL)
            } catch {
                print("Failed reading from URL: \(fileURL), Error: " + error.localizedDescription)
            }
            print("Read from the file: \(inString)")
        }
    }
    
    func getResult(from first: Int, _ second: Int, withAction: Actions) -> Int {
        switch withAction {
            
        case .adds:
            return Addition.add(first, to: second)
            
        case .subtracts:
            return Subtraction.subtract(first, with: second)
            
        case .multiplies:
            return Multiplication.multiply(first, by: second)
            
        case .divides:
            return Division.divide(first, by: second)
        }
    }
    
    func getAction(_ action: Actions) -> String {
        switch action {
            
        case .adds:
            return "+"
        case .subtracts:
            return "-"
        case .multiplies:
            return "*"
        case .divides:
            return "/"
        }
    }
}
