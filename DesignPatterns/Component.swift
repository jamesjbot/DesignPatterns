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
    var name: String? { get set }
    func add(component: Component)
    func remove(at: NSInteger)
    func child(at: NSInteger) -> Component?
    func delineateChildren() -> String
}

class Composite: Component {
    var name: String?
    var children: [Component] = []

    init(_ inname: String){
        name = inname
    }

    internal func child(at: NSInteger) -> Component? {
        return children[at]
    }

    internal func remove(at: NSInteger) {
        children.remove(at: at)
    }

    internal func add(component: Component) {
        children.append(component)
    }

    func delineateChildren() -> String {
        var retval: String?
        retval = name!
        for i in children {
                retval?.append(", \(i.delineateChildren())")
        }
        return retval ?? ""
    }

}

class Leaf: Component, Movable {
    var name: String?
    internal var position: NSInteger = 0

    init(_ inname: String) {
        name = inname
    }

    internal func child(at: NSInteger) -> Component? {
        // This should do nothing
        return nil
    }

    internal func remove(at: NSInteger) {
        // This should do nothing
    }

    internal func add(component: Component) {
        // This should do nothing
    }

    internal func move(distance: NSInteger) {
        position += distance
    }

    internal func delineateChildren() -> String {
        return name!
    }


}

