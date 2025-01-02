//
//  ContentView.swift
//  MorgenPruefung
//
//  Created by Oliver Schlüter on 16.12.24.
//

import SwiftUI

struct ContentView: View {
    static var page = "pruefungen"
    
    var body: some View {
        HStack {
            Button(action: {
                ContentView.page = "pruefungen"
            }) {
                Text("Prüfungen")
                    .bold()
            }
            .foregroundStyle(Color.primary)
            .padding(.leading)
            
            
            Button(action: {
                ContentView.page = "themen"
            }) {
                Text("Themen")
                    .bold()
            }
            .foregroundStyle(Color.primary)
            .padding(.leading)
            
            Spacer()
            
            Button(action: {
                ContentView.page = "blog"
            }) {
                Text("Blog")
                    .bold()
            }
            .foregroundStyle(Color.primary)
            .padding(.trailing)
        }
        .padding(.bottom)
        .background(Color.primary.opacity(0.1))
               
        VStack {
            Text("Seite:")
                .font(.title)
            
            Text(ContentView.page)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
