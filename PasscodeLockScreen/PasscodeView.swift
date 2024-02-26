//
//  PasscodeView.swift
//  PasscodeLockScreen
//
//  Created by Leonard McCook-Carr on 2/22/24.
//

import SwiftUI

struct PasscodeView: View {
    var body: some View {
        VStack(spacing: 48) {
            VStack(spacing: 24) {
                Text("Enter Passcode")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Text("Please enter your 4-digit pin to access your account")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
            }
            .padding(.top)
            
            // indicator view
            
            Spacer()
            
            // numberpad view
            
            NumberPadView()
        }
    }
}

#Preview {
    PasscodeView()
}
