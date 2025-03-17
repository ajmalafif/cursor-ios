//
//  ContentView.swift
//  onboarding
//
//  Created by Ajmal Afif  on 3/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                gradient: Gradient(colors: [Color.blue.opacity(0.6), Color.purple.opacity(0.8)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 25) {
                // App icon or logo
                Image(systemName: "sparkles")
                    .font(.system(size: 70))
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Circle()
                            .fill(Color.white.opacity(0.2))
                            .frame(width: 120, height: 120)
                    )
                
                // Welcome text
                Text("Hello, Ajmal!")
                    .font(.system(size: 38, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .shadow(radius: 2)
                
                // Subtitle text
                Text("Welcome to your app")
                    .font(.system(size: 22, weight: .medium, design: .rounded))
                    .foregroundColor(.white.opacity(0.9))
                    .padding(.bottom, 30)
                
                // Get started button
                Button(action: {
                    // Debug log
                    print("Get Started button tapped")
                    // Action to perform when button is tapped
                }) {
                    Text("Get Started")
                        .font(.headline)
                        .foregroundColor(.purple)
                        .padding()
                        .frame(minWidth: 200)
                        .background(
                            Capsule()
                                .fill(Color.white)
                        )
                }
            }
            .padding()
        }
        // Debug log when view appears
        .onAppear {
            print("ContentView appeared - showing welcome screen for Ajmal")
        }
    }
}

#Preview {
    ContentView()
}
