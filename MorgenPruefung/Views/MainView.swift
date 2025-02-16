//
//  MainView.swift
//  MorgenPruefung
//
//  Created by Oliver Schlüter on 02.01.25.
//

import SwiftUI

struct MainView: View {
    @State private var isLoggedIn: Bool = false
    
    var body: some View {
        if !isLoggedIn {
            WelcomeView(onLogin: { self.isLoggedIn = true })
        } else {
            LandingPageView()
        }
    }
        
}

#Preview {
    NavigationStack {
        MainView()
    }
}
