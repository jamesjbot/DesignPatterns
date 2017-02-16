//
//  DecoratorTestCases.swift
//  DesignPatterns
//
//  Created by James Jongsurasithiwat on 2/16/17.
//  Copyright © 2017 James Jongs. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class DecoratorTestCases: XCTestCase {
    var coreObject: CoreObject?
    var decoratedObject: CoreFunction?

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testCoreObject() {
        // When
        coreObject = CoreObject()
        // Given
        let identify = coreObject?.tellMeAboutYourSelf()
        // Then
        XCTAssert(identify == "CoreObject", "You failed to say your name")
    }
    
}
