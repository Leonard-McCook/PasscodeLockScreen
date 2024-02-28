//
//  ContentView.swift
//  PasscodeLockScreen
//
//  Created by Leonard McCook-Carr on 2/21/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isAuthenticated = false
    
    var body: some View {
        VStack {
            if isAuthenticated {
                VStack {
                    Text("You are logged in!")
                    
                    Button("Log Out") {
                        isAuthenticated = false
                    }
                }
            } else {
                PasscodeView( isAuthenticated: $isAuthenticated)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
