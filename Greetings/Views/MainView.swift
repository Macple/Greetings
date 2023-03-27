//
//  MainView.swift
//  Greetings
//
//  Created by Maciej Plewko on 27/03/2023.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        // Portait mode?
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            NavigationStack {
            GreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            LanguageOptionsView(
                                language: $language,
                                layoutDirectionString: $layoutDirectionString)
                        }
                    }
                }
        } else { // landscape mode
            NavigationStack {
            LandscapeGreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            LanguageOptionsView(
                                language: $language,
                                layoutDirectionString: $layoutDirectionString)
                        }
                    }
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(
            language: .constant("en"),
            layoutDirectionString: (.constant(LEFT_TO_RIGHT)))
    }
}
