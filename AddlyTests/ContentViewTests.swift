//
//  ContentViewTests.swift
//  AddlyTests
//
//  Created by Ben Boral on 7/27/21.
//

import XCTest
@testable import Addly

class ContentViewTests: XCTestCase {

    func testResultZero() throws {
        let contentView = ContentView()
        XCTAssertEqual("0", contentView.result)
    }
    
    func testResultWithOperands() throws {
        let contentView = ContentView()
        contentView.operand1.value = "1"
        contentView.operand2.value = "2"
        XCTAssertEqual("3", contentView.result)
    }

}
