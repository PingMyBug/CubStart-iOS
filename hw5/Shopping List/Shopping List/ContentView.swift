//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

struct ContentView: View {
    
    var list = [Items(imageName: "banana", itemName: "Bananas", quantity: 3),
                Items(imageName: "apple", itemName: "Apples", quantity: 4),
                Items(imageName: "eggs", itemName: "Eggs", quantity: 12),
    ]
    var body: some View {
        List{ Section(header: Text("Fruits")) {
            ForEach(list) { i in CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
            }
        }
        }.navigationTitle("Shopping List")
    }
}

class Fruit {
    let name: String
    let color: String
    init(fruitName: String, fruitColor: String) {
        name = fruitName
        color = fruitColor
    }
}

class Items: Identifiable {
    let id = UUID()
    let imageName: String
    let itemName: String
    let quantity: Int
    init(imageName: String, itemName: String, quantity: Int) {
        self.imageName = imageName
        self.itemName = itemName
        self.quantity = quantity
    }
}