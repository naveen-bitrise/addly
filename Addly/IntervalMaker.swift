//
//  IntervalMaker.swift
//  Addly
//
//  Created by Ben Boral on 8/31/22.
//

import Foundation

protocol IntervalMaker {
    func makeInterval() -> DispatchTimeInterval
}

struct RandomIntervalMaker: IntervalMaker {
    func makeInterval() -> DispatchTimeInterval {
        return DispatchTimeInterval.seconds(Int.random(in: 1...3))
    }
}
