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
        decoratedObject = CoreObject()
        // Given
        let identify = decoratedObject?.tellMeAboutYourSelf()
        // Then
        XCTAssert(identify == "CoreObject", "You failed to say your name")
    }


    func testAgeDecoratedObject() {
        // When
        decoratedObject = AgeDecoration(object: CoreObject())
        // Given
        let identity = decoratedObject?.tellMeAboutYourSelf()
        // Then
        XCTAssert(identity == "CoreObject, my age is 1" , "Your decorated object is wrong")
    }


    func testColorDecoratedObject() {
        // When
        decoratedObject = ColorDecoration(object: CoreObject())
        // Given
        let identity = decoratedObject?.tellMeAboutYourSelf()
        // Then
        XCTAssert(identity == "CoreObject, my color is Green","\(identity)")
    }

    func testColorAndAgeDecoration() {
        // When
        decoratedObject = ColorDecoration(object: AgeDecoration(object: CoreObject()))
        // Given
        let identity = decoratedObject?.tellMeAboutYourSelf()
        // Then 
        XCTAssert(identity == "CoreObject, my age is 1, my color is Green","\(identity)")
    }

    func testAgeThenColorDecoration() {
        // When
        decoratedObject = AgeDecoration(object: ColorDecoration(object: CoreObject()))
        // Given
        let identity = decoratedObject?.tellMeAboutYourSelf()
        // Then
        XCTAssert(identity == "CoreObject, my color is Green, my age is 1","\(identity)")
    }
}
