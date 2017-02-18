//
//  CoreObject.swift
//  DesignPatterns
//
//  Created by James Jongsurasithiwat on 2/16/17.
//  Copyright © 2017 James Jongs. All rights reserved.
//

import Foundation

/* 
 The decorator pattern adds additional responsibilites to an object
 dynamically. This is an alternative to subclassing for extending
 functionality. The following is the classic interpretation of decorator
 pattern.
 
 In Swift, protocol extensions are the decoration pattern of choice.
 We can add functionality to a type by just adding an extension.

*/
protocol CoreFunction {
    func tellMeAboutYourSelf() -> String
}

class CoreObject: CoreFunction {
    var name: String?

    init() {
        name = "CoreObject"
    }

    func tellMeAboutYourSelf() -> String {
        return name!
    }
}

class ObjectDecorator: CoreFunction {

    var originalObject: CoreFunction?

    required init(object: CoreFunction) {
        originalObject = object
    }

    func tellMeAboutYourSelf() -> String {
        return originalObject!.tellMeAboutYourSelf()
    }
}


class AgeDecoration: ObjectDecorator {

    var age: String = "1"

    required init(object: CoreFunction) {
        super.init(object: object)
    }

    override func tellMeAboutYourSelf() -> String {
        return originalObject!.tellMeAboutYourSelf() + ", my age is \(age)"
    }
}

class ColorDecoration: ObjectDecorator {

    var color: String = "Green"

    required init(object: CoreFunction) {
        super.init(object: object)
    }

    override func tellMeAboutYourSelf() -> String {
        return originalObject!.tellMeAboutYourSelf() + ", my color is \(color)"
    }
}



