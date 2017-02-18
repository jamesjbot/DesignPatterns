//
//  CompositePatternTestCases.swift
//  DesignPatterns
//
//  Created by James Jongsurasithiwat on 2/17/17.
//  Copyright © 2017 James Jongs. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class CompositePatternTestCases: XCTestCase {
    var rootNode: Composite?

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        rootNode = Composite()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testCreation() {
        XCTAssert(rootNode != nil)
    }
    
}
