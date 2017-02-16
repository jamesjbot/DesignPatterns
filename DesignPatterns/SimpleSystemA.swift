//
//  ComplexSystemA.swift
//  DesignPatterns
//
//  Created by James Jongsurasithiwat on 2/15/17.
//  Copyright © 2017 James Jongs. All rights reserved.
//

import Foundation

class SimpleSystemA {

    let prefixString = "Hello"

    func obfuscate(string: String) -> String {
        return "\(prefixString)\(string)"
    }
}
