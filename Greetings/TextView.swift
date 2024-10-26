//
//  TextView.swift
//  Greetings
//
//  Created by ednardo alves on 26/10/24.
//

import SwiftUI

struct TextView: View {
    
    let text: String
    @State var color: Color
    
    let colors: [Color] = [
        .green,
        .red,
        .black,
        .blue,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0, green: 0, blue: 0),
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 1, green: 215/255, blue: 0)
    ]
    
    var body: some View {
        
        Text(text)
            .padding()
            .foregroundStyle(.white)
            .background(color.opacity(0.4))
            .cornerRadius(15.0)
            .shadow(color: color ,radius: 5, x: 3,y: 3)
            .onTapGesture {
                //trocar cor ao tocar/clicar
                withAnimation {
                    color = colors.randomElement() ?? .red
                }
            }
    }
}

#Preview {
    TextView(text: "Hello There!", color: .blue)
}
