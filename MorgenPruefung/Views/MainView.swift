//
//  MainView.swift
//  MorgenPruefung
//
//  Created by Oliver Schlüter on 02.01.25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    MeshGradient(width: 2, height: 2, points: [
                        [0, 0], [1, 0],
                        [0, 1], [1, 1]
                    ], colors: [.black, .green, .green, .black])
                    .frame(height: 200)
                    
                    VStack {
                        Text("Morgen-Pruefung.de")
                            .foregroundStyle(Color.white)
                            .font(.system(size: 30))
                            .bold()
                            .padding(.top, 50)
                            .padding(.bottom)
                        
                        HStack {
                            NavigationLink(destination: ExamsView()) {
                                Text("Prüfungen")
                                    .font(.system(size: 15))
                                    .foregroundStyle(Color.primary)
                                    .bold()
                                    .padding(8)
                                    .frame(width: 120)
                                    .background(.regularMaterial, ignoresSafeAreaEdges: [])
                                    .clipShape(Capsule())
                            }
                            NavigationLink(destination: TopicsView()) {
                                Text("Themen")
                                    .font(.system(size: 15))
                                    .foregroundStyle(Color.primary)
                                    .bold()
                                    .padding(8)
                                    .frame(width: 120)
                                    .background(.regularMaterial, ignoresSafeAreaEdges: [])
                                    .clipShape(Capsule())
                            }

                            NavigationLink(destination: BlogView()) {
                                Text("Blog")
                                    .font(.system(size: 15))
                                    .foregroundStyle(Color.primary)
                                    .bold()
                                    .padding(8)
                                    .frame(width: 120)
                                    .background(.regularMaterial, ignoresSafeAreaEdges: [])
                                    .clipShape(Capsule())
                            }
                        }
                    }
                }
                .padding(.bottom, 50)
                
                Text("Anstehende Prüfungen")
                    .font(.title2)
                
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack() {
                        NavigationLink(destination: ExamDetailView(examName: "Fachinformatiker AP1")) {
                            VStack {
                                Text("Fachinformatiker | Teil 1")
                                    .font(.title)
                                
                                Text("Noch 5 Tage und 3 Stunden")
                                    .font(.headline)
                                    .glow()
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 30)
                            .foregroundColor(Color.red)
                            .background(Color.red.opacity(0.15))
                            .cornerRadius(16)
                        }
                    
                        .padding()
                        
                        ForEach(0..<5) { _ in
                            NavigationLink(destination: ExamDetailView(examName: "Fachinformatiker AP1")) {
                                VStack {
                                    Text("Fachinformatiker | Teil 2")
                                        .font(.title)
                                    
                                    Text("Noch 5 Tage und 3 Stunden")
                                        .font(.headline)
                                }
                                .padding(.horizontal)
                                .padding(.vertical, 30)
                                .foregroundColor(Color.primary)
                                .background(Color.secondary.opacity(0.15))
                                .cornerRadius(16)
                            }
                            .padding()
                        }
                    }
                }
                
                Divider()
                    .padding(.vertical)
                
                Text("Beliebte Themen")
                    .font(.title2)
                
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack() {
                        ForEach(0..<5) { _ in
                            NavigationLink(destination: TopicDetailView(topicName: "Grundlagen SQL")) {
                                VStack {
                                    Text("Grundlagen SQL")
                                        .font(.title)
                                    
                                    Text("Datenbanken")
                                    
                                    Text("Basic SELECT, INSERT, UPDATE und DELETE Anweisungen")
                                }
                                .padding(.horizontal)
                                .padding(.vertical, 30)
                                .foregroundColor(Color.primary)
                                .background(Color.secondary.opacity(0.15))
                                .cornerRadius(16)
                                .frame(maxWidth: 300)
                            }
                            .padding()
                        }
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
        
}

struct Glow: ViewModifier {
    @State var isGlowing: Bool = false
    func body(content: Content) -> some View {
        ZStack {
            content
                .blur(radius: isGlowing ? 10 : 0)
                .animation(.easeOut(duration: 1).repeatForever(), value: isGlowing)
                .onAppear() { isGlowing.toggle() }
            content
        }
    }
}

extension View {
    public func glow() -> some View {
        modifier(Glow())
    }
}

#Preview {
    NavigationStack {
        MainView()
    }
}
