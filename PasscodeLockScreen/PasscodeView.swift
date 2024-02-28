//
//  PasscodeView.swift
//  PasscodeLockScreen
//
//  Created by Leonard McCook-Carr on 2/22/24.
//

import SwiftUI

struct PasscodeView: View {
    @Binding var isAuthenticated: Bool
    @State private var passcode = ""
    
    var body: some View {
        VStack(spacing: 48) {
            VStack(spacing: 24) {
                Text("Enter Passcode")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Text("Please enter your 4-digit pin to access your account.")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
            }
            .padding(.top)
            
            // indicator view
            
            PasscodeIndicatorView(passcode: $passcode)
            
            Spacer()
            
            // numberpad view
            
            NumberPadView(passcode: $passcode)
        }
        .onChange(of: passcode, { oldValue, newValue in
            verifyPasscode()
        })
    }
    
    private func verifyPasscode() {
        guard passcode.count == 4 else { return }
        
        Task {
            try? await Task.sleep(nanoseconds: 125_000_000)
            isAuthenticated = passcode == "1111"
            passcode = ""
        }
    }
}

#Preview {
    PasscodeView(isAuthenticated: .constant(false))
}
