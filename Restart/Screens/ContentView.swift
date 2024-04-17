//
//  ContentView.swift
//  Restart
//
//  Created by Amir on 1/29/1403 AP.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if (isOnBoardingViewActive) {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
