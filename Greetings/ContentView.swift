//
//  ContentView.swift
//  Greetings
//
//  Created by ednardo alves on 25/10/24.
//

import SwiftUI

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
            
            VStack (alignment: .leading, spacing: 0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                Text("Exploring IOS programing")
                    .font(.headline)
            }
            
            Spacer()
            ForEach (message) { data in
                TextView(text: data.text, color: data.color)
            }
            Spacer()
            Spacer()
        }
            .padding()
    }
}

#Preview {
    ContentView()
}
