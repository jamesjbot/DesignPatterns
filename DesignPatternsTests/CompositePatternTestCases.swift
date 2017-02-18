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
        rootNode = Composite("Root")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        rootNode = nil
    }

    func testCreation() {
        XCTAssert(rootNode != nil)
    }

    func testInsertionOfLeaf() {
        // When
        rootNode?.add(component: Leaf("Leaf 1"))
        let displacedLeaf = Leaf("Leaf 2")
        displacedLeaf.move(distance: 3)
        rootNode?.add(component: displacedLeaf)
        rootNode?.add(component: Leaf("Leaf 3"))
        // Given
        let movedLeaf = rootNode?.child(at: 1) as! Movable
        // Then
        XCTAssert(movedLeaf.position == 3, "The position is \(movedLeaf.position)")
    }

    func testRemoveOneLeaf() {
        // When
        rootNode?.add(component: Leaf("Leaf 1"))
        let displacedLeaf = Leaf("Leaf 2")
        displacedLeaf.move(distance: 3)
        rootNode?.add(component: displacedLeaf)
        rootNode?.add(component: Leaf("Leaf 3"))
        // Given Remove middle node
        rootNode?.remove(at: 1)
        // Then
        XCTAssert(rootNode?.children[0].name == "Leaf 1")
        XCTAssert(rootNode?.children[1].name == "Leaf 3")
    }

    func testRemoveAll() {
        // When
        rootNode?.add(component: Leaf("Leaf 1"))
        let displacedLeaf = Leaf("Leaf 2")
        displacedLeaf.move(distance: 3)
        rootNode?.add(component: displacedLeaf)
        rootNode?.add(component: Leaf("Leaf 3"))
        // Given Remove middle node
        rootNode?.remove(at: 0)
        rootNode?.remove(at: 0)
        rootNode?.remove(at: 0)
        // Then
        XCTAssert(rootNode?.children.count == 0)
    }

    func testInsertNodeWithLeafs() {
        // When
        let subNode = Composite("SubNode 1")
        subNode.add(component: Leaf("Leaf 1"))
        subNode.add(component: Leaf("Leaf 2"))
        subNode.add(component: Leaf("Leaf 3"))
        // Given Remove middle node
        rootNode?.add(component: subNode)
        // Then
        let result = (rootNode?.delineateChildren())
        print(result!)
        XCTAssert(result == "Root, SubNode 1, Leaf 1, Leaf 2, Leaf 3")
    }

}
