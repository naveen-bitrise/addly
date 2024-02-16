//
//  FailingAdderTests.swift
//  AddlyTests
//
//  Created by Ben Boral on 2/8/24.
//

import XCTest

@testable import Addly

class FailingAdderTests: XCTestCase {

    func testAdder_badMath() {
        let expectation = XCTestExpectation(description: "Add asynchronously")
        let adder = Adder(intervalMaker: ZeroIntervalMaker())
        let operandNum1 = NumbersOnly()
        operandNum1.value = "1"
        let operandNum2 = NumbersOnly()
        operandNum2.value = "2"

        adder.add(operand1: operandNum1, operand2: operandNum2) { addingStatus in
            XCTAssertEqual(addingStatus, AddingStatus.added("9"))
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1.0)
    }

}
