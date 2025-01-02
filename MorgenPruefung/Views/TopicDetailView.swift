//
//  ThemenView.swift
//  MorgenPruefung
//
//  Created by Oliver Schlüter on 02.01.25.
//

import SwiftUI

struct TopicDetailView: View {
    
    let topicName: String
    
    var body: some View {
        Text(topicName)
            .navigationTitle(Text(topicName))
    }
}

#Preview {
    NavigationStack {
        TopicDetailView(topicName: "Grundlagen SQL")
    }
}
