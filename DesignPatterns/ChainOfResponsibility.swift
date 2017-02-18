//
//  ChainOfResponsibility.swift
//  DesignPatterns
//
//  Created by James Jongsurasithiwat on 2/18/17.
//  Copyright © 2017 James Jongs. All rights reserved.
//

import Foundation

enum ProblemType {
    case Specific
    case LessSpecific
    case General
}

protocol Handler {
    var name: String? { get set }
    var successor: Handler? { get set }
    func handleProblem(problem: ProblemType) -> String
}

class SpecificHandler: Handler {
    var successor: Handler?
    var name: String?
    init(_ inname: String) {
        name = inname
        successor = nil
    }

    func handleProblem(problem: ProblemType) -> String {
        return ""
    }
}

class LessSpecificHandler: Handler {
    var successor: Handler?
    var name: String?
    init(_ inname: String) {
        name = inname
        successor = nil
    }

    func handleProblem(problem: ProblemType) -> String {
        return ""
    }
}

class GeneralHandler: Handler {
    var successor: Handler?
    var name: String?
    init(_ inname: String) {
        name = inname
        successor = nil
    }

    func handleProblem(problem: ProblemType) -> String {
        return ""
    }
}














