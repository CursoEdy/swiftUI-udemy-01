//
//  ContentView.swift
//  Greetings
//
//  Created by ednardo alves on 25/10/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            
            BackgroundColorView()
            
            VStack (alignment: .leading) {
                
                TitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
