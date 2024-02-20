//
//  FailingAddlyUITests.swift
//  AddlyUITests
//
//  Created by Ben Boral on 2/20/24.
//

import XCTest

final class FailingAddlyUITests: XCTestCase {

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
        validateResultAsync(result: result, expectedValue: "333")
    }

    private func validateResultAsync(result: XCUIElement, expectedValue: String) {
        let predicate = NSPredicate { _, _ in result.label == expectedValue }
        let expectation = XCTNSPredicateExpectation(predicate: predicate, object: nil)
        let expectationResult = XCTWaiter().wait(for: [expectation], timeout: 4)
        if expectationResult != .completed {
            XCTFail("Expected \(expectedValue) but got \(result.label)")
        }
    }

}
