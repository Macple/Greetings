//
//  ContentView.swift
//  Greetings
//
//  Created by Maciej Plewko on 25/03/2023.
//

import SwiftUI

/// This is the main view of tje Greetings App.
struct GreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack(alignment: .leading) {
                
                TitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
            }
        }
    }
}

struct GreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
    }
}
