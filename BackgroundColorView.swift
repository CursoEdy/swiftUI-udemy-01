//
//  BackgroundColorView.swift
//  Greetings
//
//  Created by ednardo alves on 26/10/24.
//

import SwiftUI

struct BackgroundColorView: View {
    var body: some View {
        
        LinearGradient(colors: [.red.opacity(0.2),.red.opacity(0.4),.red.opacity(0.1)],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .ignoresSafeArea()
        
    }
}

#Preview {
    BackgroundColorView()
}
