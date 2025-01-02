//
//  TopicsView.swift
//  MorgenPruefung
//
//  Created by Oliver Schlüter on 02.01.25.
//

import SwiftUI

struct TopicsView: View {
    var body: some View {
        VStack {
            List {
                NavigationLink(destination: TopicDetailView(topicName: "Grundlagen SQL")) {
                    Text("Grundlagen SQL")
                }
            }
        } .navigationTitle(Text("Themen"))
    }
}

#Preview {
    NavigationStack {
        TopicsView()
    }
}
