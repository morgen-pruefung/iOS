//
//  PruefungenView.swift
//  MorgenPruefung
//
//  Created by Oliver Schlüter on 02.01.25.
//

import SwiftUI

struct ExamsView: View {
    var body: some View {
        VStack {
            List {
                NavigationLink(destination: ExamDetailView(examName: "Fachinformatiker AP1")) {
                    Text("Fachinformatiker AP1")
                }
            }
        } .navigationTitle(Text("Prüfungen"))
    }
}

#Preview {
    NavigationStack {
        ExamsView()
    }
}
