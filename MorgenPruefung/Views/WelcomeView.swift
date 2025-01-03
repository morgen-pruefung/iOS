//
//  WelcomeView.swift
//  MorgenPruefung
//
//  Created by Oliver Schlüter on 03.01.25.
//

import SwiftUI

struct WelcomeView: View {
    @State private var isAnimating = false
        
        var body: some View {
            ZStack {
                MeshGradient(width: 3, height: 3, points: [
                    [0.0, 0.0], [0.5, 0], [1.0, 0.0],
                    [0.0, 0.5], [isAnimating ? 0.1 : 0.9, 0.5], [1.0, 0.5],
                    [0.0, 1.0], [0.5, 1.0], [1.0, 1.0]
                ], colors: [
                    .red, .purple, .indigo,
                    .orange, isAnimating ? .white : .brown, .blue,
                    .yellow, .green, .mint
                ],
                             
                    smoothsColors: true,
                    colorSpace: .perceptual
                )
                .onAppear {
                    withAnimation(.easeInOut(duration: 5).repeatForever(autoreverses: true)) {
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
                                
                            }
                            .buttonStyle(.borderedProminent)
                            
                            Button("Anmelden") {
                                
                            }
                            .buttonStyle(.borderedProminent)
                        }
                        .padding()
                        
                        NavigationLink(destination: MainView()) {
                            Text("Weiter als Gast")
                        }
                        
                    }
                    .padding()

                }
                
            }
            .ignoresSafeArea()
            
        }
}

#Preview {
    NavigationStack {
        WelcomeView()
    }
}
