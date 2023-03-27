//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by Maciej Plewko on 27/03/2023.
//

import SwiftUI

struct LanguageOptionsView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    //@Binding var layoutDirection: LayoutDirection
    
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu {
                Button(action: {
                    language = "en"
                    layoutDirectionString = LEFT_TO_RIGHT
                }, label: {
                    Text("English")
                })
                Button(action: {
                    language = "pl"
                    layoutDirectionString = LEFT_TO_RIGHT
                }, label: {
                    Text("Polish")
                })
                Button(action: {
                    language = "ar"
                    layoutDirectionString = RIGHT_TO_LEFT
                }, label: {
                    Text("Arabic")
                })
            }
    }
}

struct LanguageOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageOptionsView(
            language: .constant("en"),
            layoutDirectionString: .constant(LEFT_TO_RIGHT))
    }
}
