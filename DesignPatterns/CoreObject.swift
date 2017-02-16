//
//  CoreObject.swift
//  DesignPatterns
//
//  Created by James Jongsurasithiwat on 2/16/17.
//  Copyright © 2017 James Jongs. All rights reserved.
//

import Foundation

// The decorator pattern adds additional responsibilites to an object
// dynamically. This is an alternative to subclassing for extending
// functionality.

protocol CoreFunction {
    func tellMeAboutYourSelf() -> String
}

class CoreObject: CoreFunction {
    var name: String?

    init() {
        name = "CoreObject"
    }

    func tellMeAboutYourSelf() -> String {
        return ""
    }
}
