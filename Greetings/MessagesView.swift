//
//  MessagesView.swift
//  Greetings
//
//  Created by ednardo alves on 26/10/24.
//

import SwiftUI

struct MessagesView: View {
    
    let message: [DataItemModel] = [
        .init(text: "Hello There!", color: .red),
        .init(text: "Hi, i ghost the down cool", color: .black),
        .init(text: "Ready!", color: .gray),
        .init(text: "Hello, world!", color: .blue),
        .init(text: "Tanks for coming!", color: .green)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach (message) { data in
                TextView(text: data.text, color: data.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}
