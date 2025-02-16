//
//  WelcomeView.swift
//  MorgenPruefung
//
//  Created by Oliver Schlüter on 03.01.25.
//

import SwiftUI

struct WelcomeView: View {
    var onLogin: () -> Void
    
    @State private var isAnimating = false
    @Environment(\.colorScheme) var colorScheme
    
    init(onLogin: @escaping () -> Void) {
        self.onLogin = onLogin
    }
        
    var body: some View {
        ZStack {
            MeshGradient(width: 2, height: 2, points: [
                [0, 0], [1, 0],
                [0, 1], [1, 1]
            ], colors: [
                isAnimating ? .black : .blue, isAnimating ? .red : .black,
                isAnimating ? .orange : .black, isAnimating ? .black : .green
            ],
                         
                smoothsColors: true,
                colorSpace: .perceptual
            )
            .onAppear {
                withAnimation(.smooth(duration: 2).repeatForever(autoreverses: true)) {
                    isAnimating.toggle()
                }
            }
            
            VStack {
                VStack {
                    Text("Willkommen bei")
                    
                    Text("Morgen-Pruefung.de")
                        .font(.title)
                }
                .padding()
                .background(.regularMaterial)
                .cornerRadius(16)
                .shadow(radius: 16)
                
                VStack {
                    HStack {
                        Button("Registieren") {
                            onLogin()
                        }
                        .buttonStyle(.borderedProminent)
                        
                        Button("Anmelden") {
                            onLogin()
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .padding()
                    
                    Button("Weiter als Gast") {
                        onLogin()
                    }
                    .foregroundStyle(.link)
                    .buttonStyle(.plain)
                    
                }
                .padding()

            }
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    NavigationStack {
        WelcomeView(onLogin: {})
    }
}
