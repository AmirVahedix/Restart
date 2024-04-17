//
//  HomeView.swift
//  Restart
//
//  Created by Amir on 1/29/1403 AP.
//

import SwiftUI

struct HomeView: View {
    // MARK: - Properties
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack (spacing: 20) {
            Text("HomeView")
                .font(.largeTitle)
            Button(action: {
                isOnBoardingViewActive = true
            }) {
                Text("Restart")
            }
        }
    }
}

#Preview {
    HomeView()
}
