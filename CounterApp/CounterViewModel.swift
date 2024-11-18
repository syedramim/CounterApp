//
//  CounterViewModel.swift
//  CounterApp
//
//  Created by Kaneis Zontanos on 11/19/24.
//

import Foundation

class CounterViewModel: ObservableObject {
    @Published var counters: [Counter] = []
    
    func addCounter() {
        counters.append(Counter(value: 0))
    }
    
    func deleteCounter(at index: Int) {
        counters.remove(at: index)
    }
}
