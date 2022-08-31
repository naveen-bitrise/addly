//
//  Adder.swift
//  Addly
//
//  Created by Ben Boral on 8/30/22.
//

import Foundation

enum AddingStatus: Equatable {
    case nothingToAdd
    case adding
    case added(String)
    case error
}

struct Adder {
    
    let intervalMaker: IntervalMaker
    
    func add(
        operand1: NumbersOnly,
        operand2: NumbersOnly,
        completion: @escaping ((AddingStatus) -> Void)) {
        guard let o1 = Int(operand1.value), let o2 = Int(operand2.value) else {
            completion(.nothingToAdd)
            return
        }
            let delay = intervalMaker.makeInterval()
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            completion(.added(String(o1 + o2)))
        }
    }    
}
