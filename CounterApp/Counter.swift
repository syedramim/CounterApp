//
//  Counter.swift
//  CounterApp
//
//  Created by Kaneis Zontanos on 11/19/24.
//

import Foundation

struct Counter: Identifiable, Hashable {
    let id = UUID()
    var value: Int = 0
}
