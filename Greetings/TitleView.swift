//
//  TitleView.swift
//  Greetings
//
//  Created by ednardo alves on 26/10/24.
//

import SwiftUI

struct TitleView: View {
    
    let lineWidth = 10.0
    let diameter = 60.0
    
    @State private var isRotaded: Bool = false
    
    var angle: Angle {
            isRotaded ? .zero : Angle(degrees: 360)
    }
    
    var angularGradient: AngularGradient{
        AngularGradient(colors: [.red, .green, .blue], center: .center, angle: .zero)
    }
    
    @State private var subtitle: String = "Exploring IOS programing"
    
    let subtitles = [
        "Exploring IOS programing",
        "In maintance",
        "Do no say",
        "This self",
        "just it",
        "i`m great",
        "Get out",
        "I like you"
    ]
    
    var body: some View {
        //Title
        HStack {
            VStack (alignment: .leading, spacing: 0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                Text(subtitle)
                    .font(.headline)
            }
            .onTapGesture {
                
                //trocar tituclo
                withAnimation{
                    subtitle = subtitles.randomElement() ?? "xploring IOS programing"
                }
            }
            
            Spacer()
            
            Circle()
                .strokeBorder( angularGradient, lineWidth: lineWidth)
                .rotationEffect( angle )
                .frame(width: diameter, height: diameter)
                .onTapGesture {
                    withAnimation(Animation.spring) {
                        isRotaded.toggle()
                    }
                }
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}
