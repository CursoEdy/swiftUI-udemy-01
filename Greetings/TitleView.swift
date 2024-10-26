//
//  TitleView.swift
//  Greetings
//
//  Created by ednardo alves on 26/10/24.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        //Title
        VStack (alignment: .leading, spacing: 0) {
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.thin)
            Text("Exploring IOS programing")
                .font(.headline)
        }
    }
}

#Preview {
    TitleView()
}
