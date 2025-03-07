//
//  TestEnum.swift
//  SwiftUIPlus
//
//  Created by Hello World on 3/6/25.
//

import Foundation

enum TestEnum: CaseIterable {
    case hello
    case world
    case shortString
    case loooooongString
    
    var description: String {
        switch self {
        case .hello:
            return "Hello"
        case .world:
            return "World"
        case .shortString:
            return "shortString"
        case .loooooongString:
            return "loooooongString"
        }
    }
}
