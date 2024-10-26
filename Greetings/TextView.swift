//
//  TextView.swift
//  Greetings
//
//  Created by ednardo alves on 26/10/24.
//

import SwiftUI

struct TextView: View {
    
    let text: String
    let color: Color
    
    var body: some View {
        
        Text(text)
            .padding()
            .foregroundStyle(.white)
            .background(color.opacity(0.6))
            .cornerRadius(15.0)
            .shadow(color: color ,radius: 5, x: 3,y: 3)
    }
}

#Preview {
    TextView(text: "Hello There!", color: .red)
}
