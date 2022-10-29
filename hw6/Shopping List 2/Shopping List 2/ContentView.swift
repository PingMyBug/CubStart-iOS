//
//  ContentView.swift
//  Shopping List 2
//
//  Created by Tony Hong on 3/27/22.
//

import SwiftUI

class Items: Identifiable {
    
    var itemName: String
    
    var quantity: String
    
    init(itemName: String, quantity: String) {
        
        self.itemName = itemName
        
        self.quantity = quantity
    }
    
}

struct ContentView: View {
    
    var list = [
        Items(itemName: "Bananas", quantity: "3"),
        Items(itemName: "Apples", quantity: "4"),
        Items(itemName: "Eggs", quantity: "12")
    ]
        
    var body: some View {
        NavigationView {
            List {
            }.navigationTitle("Shopping List")
        }
    }
}
