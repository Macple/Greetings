//
//  DataItemModel.swift
//  Greetings
//
//  Created by Maciej Plewko on 27/03/2023.
//

import SwiftUI

/// This is a the data model of the messages
/// that will appear in the app.
/// It contains a text string and a color
struct DataItemModel: Identifiable {
    let id = UUID()
    let text: LocalizedStringKey
    let color: Color
}
