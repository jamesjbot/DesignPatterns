//
//  ChainOfResponsibilityTests.swift
//  DesignPatterns
//
//  Created by James Jongsurasithiwat on 2/18/17.
//  Copyright © 2017 James Jongs. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class ChainOfResponsibilityTests: XCTestCase {

    var specific: Handler?
    var lessSpecific: Handler?
    var general: Handler?

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        specific = SpecificHandler("handler 1")
        lessSpecific = LessSpecificHandler("handler 2")
        general = GeneralHandler("handler 3")

    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        specific = nil
        lessSpecific = nil
        general = nil

    }

    func testGeneralProblem() {
        // Given
        specific?.successor = lessSpecific
        lessSpecific?.successor = general
        // When
        let msg = specific?.handleProblem(problem: .General)
        // Then
        XCTAssert(msg == "handler 3")
    }

    func testLessSpecificProblem() {
        // Given
        specific?.successor = lessSpecific
        lessSpecific?.successor = general
        // When
        let msg = specific?.handleProblem(problem: .LessSpecific)
        // Then
        XCTAssert(msg == "handler 2")
    }

    func testSpecificProblem() {
        // Given
        specific?.successor = lessSpecific
        lessSpecific?.successor = general
        // When
        let msg = specific?.handleProblem(problem: .Specific)
        // Then
        XCTAssert(msg == "handler 1")
    }
}
