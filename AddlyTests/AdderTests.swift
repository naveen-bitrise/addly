//
//  AdderTests.swift
//  AddlyTests
//
//  Created by Ben Boral on 8/31/22.
//

import XCTest
@testable import Addly

class AdderTests: XCTestCase {
    
    func testAdder_happyPath() {
        executeAddingTest(o1: "1", o2: "2", expected: .added("3"))
    }
    
    func testAdder_onlyOneArg() {
        executeAddingTest(o1: "1", o2: nil, expected: .nothingToAdd)
    }
    
    func testAdder_badValues() {
        executeAddingTest(o1: "not a number", o2: "another not a number", expected: .nothingToAdd)
    }
    
    private func executeAddingTest(o1: String, o2: String?, expected: AddingStatus) {
        let expectation = XCTestExpectation(description: "Add asynchronously")
        let adder = Adder(intervalMaker: ZeroIntervalMaker())
        let operand1 = NumbersOnly()
        operand1.value = o1
        let operand2 = NumbersOnly()
        if let o2 = o2 {
            operand2.value = o2
        }
        
        adder.add(operand1: operand1, operand2: operand2) { addingStatus in
            XCTAssertEqual(addingStatus, expected)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1.0)
    }

}
