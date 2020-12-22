//
//  lesson7.swift
//  geekbrainsSwiftLesons
//
//  Created by Андрей Ситников on 22.12.2020.
//  Copyright © 2020 Андрей Ситников. All rights reserved.
//

import Foundation

class Factory {
    var employee = [
        "Иванов Иван Иванович": 3000,
        "Сидоров Сидор Сидорович": 12080,
        "Петров Петр Петрович": 8040
    ]
    
    func fine(name : String, withhold : Int) -> (String?, FactoryError?){
        guard let person = employee[name] else {
            return (nil, FactoryError.invalideEmployeeName)
        }
        
        guard person - withhold > 0 else {
            return (nil, FactoryError.withholdingOfWages(correctWithhold : person))
        }
        
        employee[name] = person - withhold
        return("\(name) \(String(describing: employee[name]))", nil)
    }
    
    func employeeData(name : String) throws -> String {
        guard employee[name] != nil else {
           throw FactoryError.invalideEmployeeName
        }
        
        return "\(name) \(String(describing: employee[name]))"
    }
}

enum FactoryError : Error {
    case invalideEmployeeName
    case withholdingOfWages(correctWithhold : Int)
}
