//
//  LandscapeGreetingsView.swift
//  Greetings
//
//  Created by Maciej Plewko on 27/03/2023.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            BackgroundView()
            
            HStack() {
                
                VerticalTitleView()
                
                Spacer()
                
                MessagesView()
                
            }
        }
    }
}

struct LandscapeGreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        LandscapeGreetingsView()
    }
}
