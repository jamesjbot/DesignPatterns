//
//  Facade.swift
//  DesignPatterns
//
//  Created by James Jongsurasithiwat on 2/15/17.
//  Copyright © 2017 James Jongs. All rights reserved.
//

import Foundation

protocol Encryptable {
    func encrypt(string: String) -> String
    //func decrypt(string: String, using: EncryptionType) -> String
}


// The facade pattern decouples complex classes from your code by use of
// of a simpler interface, but the complex methods themselves are still
// to the rest of the module if needed

class Facade: Encryptable {

    var simpleSystemA = SimpleSystemA()
    var simpleSystemB = SimpleSystemB()
    //var complexSystemC = ComplexSystemB()


    func encrypt(string: String) -> String {
        return encryptUsing(systemA: string)
    }

    func encryptUsing(systemA string: String) -> String {
        return simpleSystemA.obfuscate(string: string)
    }


    func encryptUsing(B: String) -> String {
        return B
    }


    func encryptUsing(C: String) -> String {
        return C
    }
}
