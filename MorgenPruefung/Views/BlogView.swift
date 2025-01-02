//
//  BlogView.swift
//  MorgenPruefung
//
//  Created by Oliver Schlüter on 02.01.25.
//

import SwiftUI

struct BlogView: View {
    var body: some View {
        Text("Der Blog")
            .navigationTitle(Text("Blog"))
    }
}

#Preview {
    NavigationStack {
        BlogView()
    }
}
