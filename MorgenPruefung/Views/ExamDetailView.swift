//
//  ExamDetailView.swift
//  MorgenPruefung
//
//  Created by Oliver Schlüter on 02.01.25.
//

import SwiftUI

struct ExamDetailView: View {
    
    let examName: String
    
    var body: some View {
        VStack {
            List {
                NavigationLink(destination: TopicDetailView(topicName: "Thema 1")) {
                    Text("Thema 1")
                }
            }
        } .navigationTitle(Text(examName))
    }
}

#Preview {
    NavigationStack {
        ExamDetailView(examName: "Fachinformatiker AP1")
    }}
