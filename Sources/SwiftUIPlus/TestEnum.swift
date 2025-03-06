//
//  TestEnum.swift
//  SwiftUIPLus
//
//  Created by Hello World on 3/6/25.
//

import Foundation

enum TestEnum: CaseIterable {
    case hello
    case world
    case nihao
    case blahblahblahblahblah
    
    var description: String {
        switch self {
        case .hello:
            return "Hello"
        case .world:
            return "World"
        case .nihao:
            return "nihao"
        case .blahblahblahblahblah:
            return "blahblahblahblahblah"
        }
    }
}
