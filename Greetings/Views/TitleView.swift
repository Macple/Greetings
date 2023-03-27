//
//  TitleView.swift
//  Greetings
//
//  Created by Maciej Plewko on 27/03/2023.
//

import SwiftUI

/// Title view with randomly changable subtitle
/// on tap
struct TitleView: View {
    
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    
    let caption: [LocalizedStringKey] = [
        LocalizedStringKey("Exploring iOS 16 programming"),
        LocalizedStringKey("Learn how to bake"),
        LocalizedStringKey("Programming recipes"),
        LocalizedStringKey("A quest for knowledge")
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10.0) {
                Text(LocalizedStringKey("Greetings"))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                Text(caption[captionIndex])
                    .font(.headline)
                    .fontWeight(.thin)
                    .foregroundColor(.black)
            } .onTapGesture {
                captionIndex = Int.random(in: 0..<caption.count)
            }
            
            Circle()
                .strokeBorder( AngularGradient(gradient: Gradient(colors: [.yellow, .green, .red, .blue]),
                                               center: .center,
                                               angle: .zero),
                               lineWidth:  15)
                .rotationEffect(isRotated ? .zero : .degrees(180))
                .frame(maxWidth: 70, maxHeight: 70)
                .onTapGesture {
                    withAnimation(Animation.spring()) {
                        isRotated.toggle()
                    }
                }
        }
        .padding()
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
