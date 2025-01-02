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
                HStack {
                    NavigationLink(destination: ExamsView()) {
                        Text("Prüfungen")
                            .padding(8)
                            .background(.regularMaterial, ignoresSafeAreaEdges: [])
                            .clipShape(Capsule())
                    }
                    .padding(.leading)
                    
                    NavigationLink(destination: TopicsView()) {
                        Text("Themen")
                            .padding(8)
                            .background(.regularMaterial, ignoresSafeAreaEdges: [])
                            .clipShape(Capsule())
                    }
                    
                    NavigationLink(destination: BlogView()) {
                        Text("Blog")
                            .padding(8)
                            .background(.regularMaterial, ignoresSafeAreaEdges: [])
                            .clipShape(Capsule())
                    }
                    
                    Spacer()
                }
                
                Divider()
                    .padding(.vertical)
                
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
            .navigationTitle("Morgen Prüfung")
        }
    }
}

#Preview {
    NavigationStack {
        MainView()
    }
}
