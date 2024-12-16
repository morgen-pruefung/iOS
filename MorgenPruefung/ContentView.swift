//
//  ContentView.swift
//  MorgenPruefung
//
//  Created by Oliver Schlüter on 16.12.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Text("Prüfungen")
            }
            .foregroundStyle(Color.primary)
            .padding(.leading)
            
            
            Button(action: {}) {
                Text("Themen")
            }
            .foregroundStyle(Color.primary)
            .padding(.leading)
            
            Spacer()
            
            Button(action: {}) {
                Text("Blog")
            }
            .foregroundStyle(Color.primary)
            .padding(.trailing)
        }
        .padding(.bottom)
        .background(Color.primary.opacity(0.1))
        
        
        VStack {
            Text("Nächste Prüfung:")
                .font(.title)
            
            Text("Fachinformatiker | Teil 1")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
