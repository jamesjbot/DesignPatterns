//
//  DesignPatternsTests.swift
//  DesignPatternsTests
//
//  Created by James Jongsurasithiwat on 2/15/17.
//  Copyright © 2017 James Jongs. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class DesignPatternsTests: XCTestCase {

    var facade: Facade?

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        facade = Facade()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        facade = nil
    }

    func testEncryptionFacade() {
        // Given a simple message
        let message = "hi"
        // When we encrypt the message
        let output = facade?.encrypt(string: message)
        // Then the output will be
        XCTAssert(output == "HelloHellohiWorld", "Did not return the same\(output)")
    }
    
}
