//
//  Component.swift
//  DesignPatterns
//
//  Created by James Jongsurasithiwat on 2/17/17.
//  Copyright © 2017 James Jongs. All rights reserved.
//

import Foundation

protocol Movable {
    var position: NSInteger {get set}
    func move(distance: NSInteger)
}

protocol Component {
    func add(component: Component)
    func remove(component: Component)
    func child(at: NSInteger) -> Component?
}

class Composite: Component {

    var children: [Component] = []

    internal func child(at: NSInteger) -> Component? {
        return nil
    }

    internal func remove(component: Component) {
    }

    internal func add(component: Component) {
        children.append(component)
    }


}

class Leaf: Component, Movable {
    internal var position: NSInteger = 0

    internal func child(at: NSInteger) -> Component? {
        return nil
    }

    internal func remove(component: Component) {
    }

    internal func add(component: Component) {
    }

    internal func move(distance: NSInteger) {
        position += distance
    }


}

