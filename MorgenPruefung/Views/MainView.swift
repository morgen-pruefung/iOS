//
//  MainView.swift
//  MorgenPruefung
//
//  Created by Oliver Schlüter on 02.01.25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            HStack {
                NavigationLink("Prüfungen") {
                    ExamsView()
                }
                .font(.title2)
                .padding(.leading)
                
                NavigationLink("Themen") {
                    TopicsView()
                }
                .font(.title2)
                .padding(.leading)
                
                Spacer()
                
                NavigationLink("Blog") {
                    BlogView()
                }
                .font(.title2)
                .padding(.trailing)
            }
            
            Spacer()
        }
        .navigationTitle("Morgen Prüfung")
    }
}

#Preview {
    NavigationStack {
        MainView()
    }
}
