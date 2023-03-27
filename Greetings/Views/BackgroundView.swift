//
//  BackgroundView.swift
//  Greetings
//
//  Created by Maciej Plewko on 27/03/2023.
//

import SwiftUI

/// Background view documentation
struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [Color("blue"),
                                Color("blue2")],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .opacity(1)
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
