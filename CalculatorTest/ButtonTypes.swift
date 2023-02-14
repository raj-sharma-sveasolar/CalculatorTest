//
//  ButtonTypes.swift
//  CalculatorTest
//
//  Created by Rajkumar Sharma on 14/02/23.
//

import Foundation
import SwiftUI


enum ButtonTypes: Hashable {
    
    case digit(_ number: Int)
    case operation(_ operation: String)
    case allClear
    
    /*
     Variable == properties
     1. Computed properties
     2. Stored properties
     */
    var backgroundColor: Color {
        switch self {
        case .digit:
            return .secondary
        default:
            return .orange
        }
    }
    
    var title: String {
        switch self {
        case .digit(let number):
            return "\(number)"
        case .operation(let operation):
            return operation
        case .allClear:
            return "AC"
        }
    }
    
    var isWide: Bool {
        return self == .digit(0)
    }
    
}


class Example {
    let count: Int = 5
    var multipliedBy10: Int {
        return count * 10
    }
}
