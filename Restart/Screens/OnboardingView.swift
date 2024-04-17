//
//  OnboardingView.swift
//  Restart
//
//  Created by Amir on 1/29/1403 AP.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = true
    
    // MARK: - Body
    var body: some View {
        VStack (spacing: 20) {
            Text("on boarding")
                .font(.largeTitle)
            Button(action: {
                isOnBoardingViewActive = false
            }) {
                Text("Button")
            }
        }
    }
}

#Preview {
    OnboardingView()
}
