//
//  AddlyUITests.swift
//  AddlyUITests
//
//  Created by Ben Boral on 7/26/21.
//

import XCTest

class AddlyUITests: XCTestCase {

    func testAdding() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        let operand1 = app.textFields["operand1"]
        let operand2 = app.textFields["operand2"]
        let result = app.staticTexts["result"]
        operand1.tap()
        operand1.typeText("11")
        operand2.tap()
        operand2.typeText("22")
        XCTAssertEqual("33", result.label)
    }
    
    func testAddingOneOperand() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        let operand1 = app.textFields["operand1"]
        let result = app.staticTexts["result"]
        operand1.tap()
        operand1.typeText("11")
        XCTAssertEqual("0", result.label)
    }
}
