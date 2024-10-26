//
//  ContentView.swift
//  Greetings
//
//  Created by ednardo alves on 25/10/24.
//

import SwiftUI

struct DataItemModel {
    let text: String
    let colo: Color
}

struct ContentView: View {
    var body: some View {
        
        VStack (alignment: .leading) {
            
            TextView(text: "Hello There!", color: .red)
            TextView(text: "Hi", color: .black)
            TextView(text: "Ready!", color: .gray)
            TextView(text: "Hello, world!", color: .blue)
            TextView(text: "Tanks for coming!", color: .green)
            
            }
            .padding()
    }
}

#Preview {
    ContentView()
}
