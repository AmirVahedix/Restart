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
        ZStack {
            Color.customBlue
                .ignoresSafeArea(.all, edges: .all)
            VStack (spacing: 20) {
                // MARK: - HEADER
                Spacer()
                VStack (spacing: 0) {
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    Text("""
                    It's not how much we give but
                    how much love we put into giving.
                    """)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                }
                
                // MARK: - CENTER
                
                ZStack {
                    CircleGroupView(
                        ShapeColor: .white,
                        ShapeOpacity: 0.2
                    )
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }
                
                Spacer()
                
                // MARK: - FOOTER
                
                ZStack {
                    Capsule()
                        .fill(.white.opacity(0.2))
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)
                    
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    
                    
                    HStack {
                        Capsule()
                            .fill(Color.customRed)
                            .frame(width: 80)
                        Spacer()
                    }
                    
                    
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color.customRed)
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .onTapGesture {
                            isOnBoardingViewActive = false
                        }
                        
                        Spacer()
                    }
                }
                .frame(height: 80, alignment: .center)
                .padding()
            }
        }
    }
}

#Preview {
    OnboardingView()
}
