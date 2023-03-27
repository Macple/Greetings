//
//  MessagesView.swift
//  Greetings
//
//  Created by Maciej Plewko on 27/03/2023.
//

import SwiftUI

/// A list of messages  that change colors
/// after tapping them
struct MessagesView: View {
    let messages = [
        DataItemModel(text: LocalizedStringKey("Hello there!"),
                      color: Color("green")),
        DataItemModel(text: LocalizedStringKey("Welcome to Swift programming"),
                      color: Color("purple")),
        DataItemModel(text: LocalizedStringKey("Are you ready to"),
                      color: Color("yellow")),
        DataItemModel(text: LocalizedStringKey("start exploring?"),
                      color: Color("red")),
        DataItemModel(text: LocalizedStringKey("Boom"),
                      color: Color("gray")),
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                ForEach( messages, content: { dataItem in
                    TextView(text: dataItem.text, color: dataItem.color)
                })
            }
            .padding()
            
            Spacer()
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
