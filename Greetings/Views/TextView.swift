//
//  TextView.swift
//  Greetings
//
//  Created by Maciej Plewko on 27/03/2023.
//

import SwiftUI

struct TextView: View {
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: [Color] = [
        .red, .green, .blue, .orange,
        .yellow, .purple, .pink, .gray,
        .brown, .cyan, .indigo, .mint
    ]
    
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .padding()
            .background(color.opacity(1))
            .cornerRadius(20)
            .shadow(color: color.opacity(0.4), radius: 5, x: 10, y: 10)
            .onTapGesture {
                let length = colors.count
                let randomIndex = Int.random(in: 0..<length)
                color = colors[randomIndex].opacity(0.8)
            }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: LocalizedStringKey("Greetings"), color: .red)
    }
}
