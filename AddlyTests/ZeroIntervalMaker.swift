//
//  ZeroIntervalMaker.swift
//  AddlyTests
//
//  Created by Ben Boral on 8/31/22.
//

import Foundation
@testable import Addly

struct ZeroIntervalMaker: IntervalMaker {
    func makeInterval() -> DispatchTimeInterval {
        return DispatchTimeInterval.seconds(0)
    }
}
