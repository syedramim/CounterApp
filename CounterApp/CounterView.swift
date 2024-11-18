//
//  ContentView.swift
//  CounterApp
//
//  Created by Kaneis Zontanos on 11/18/24.
//

import SwiftUI

struct CounterView: View {
    @StateObject private var counterVM = CounterViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(Array(counterVM.counters.enumerated()), id: \.element.id) { index, counter in
                        HStack {
                            Text("\(counter.value)")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .padding()
                                .foregroundStyle(counter.value > 0 ? .green : (counter.value < 0 ? .red : .gray))
                            
                            Button {
                                counterVM.counters[index].value += 1
                            } label: {
                                Image(systemName: "plus.square.fill")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                            }
                            
                            Button {
                                counterVM.counters[index].value -= 1
                            } label: {
                                Image(systemName: "minus.square.fill")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                            }
                            
                            Spacer()
                            
                            Button {
                                counterVM.deleteCounter(at: index)
                            } label: {
                                Image(systemName: "trash.fill")
                                    .foregroundColor(.red)
                            }
                        }
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                    }
                }
                .padding()
            }
            .navigationTitle("CounterApp")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        counterVM.addCounter()
                    } label: {
                        Text("Add Counter")
                            .bold()
                    }
                }
            }
        }
    }
}

#Preview {
    CounterView()
}





