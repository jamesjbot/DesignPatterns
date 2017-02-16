//
//  ComplexSystemB.swift
//  DesignPatterns
//
//  Created by James Jongsurasithiwat on 2/15/17.
//  Copyright © 2017 James Jongs. All rights reserved.
//

import Foundation

class SimpleSystemB {
    let prefixString = "Hello"
    let suffixString = "World"

    func obfuscate(string: String) -> String {
        return "\(prefixString)\(string)\(suffixString)"
    }

    func deobfuscate(string: String) -> String {
        return string
        //let range =
        //var result = string.substring(with: <#T##Range<String.Index>#>)
    }
}
