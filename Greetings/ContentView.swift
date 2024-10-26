//
//  ContentView.swift
//  Greetings
//
//  Created by ednardo alves on 25/10/24.
//

import SwiftUI

struct DataItemModel {
    let text: String
    let color: Color
}

struct ContentView: View {
    
    let message: [DataItemModel] = [
        .init(text: "Hello There!", color: .red),
        .init(text: "Hi", color: .black),
        .init(text: "Ready!", color: .gray),
        .init(text: "Hello, world!", color: .blue),
        .init(text: "Tanks for coming!", color: .green)
    ]
    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            TextView(text: message[0].text, color: message[0].color)
            
        }
            .padding()
    }
}

#Preview {
    ContentView()
}
