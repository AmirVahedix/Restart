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
    @State private var isAnimating: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack (spacing: 20) {
            // MARK: - Header
            Spacer()
            
            ZStack {
                CircleGroupView(
                    ShapeColor: .gray,
                    ShapeOpacity: 0.1
                )
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(
                        Animation.easeInOut(duration: 4).repeatForever(),
                        value: isAnimating
                    )
            }
            
            // MARK: - Center
            Text("The time that leads to mastery is dependent on the intensity of out focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            // MARK: - Footer
            
            Spacer()
            
            Button(action: {
                withAnimation {
                    playSound(sound: "success", type: "m4a")
                    isOnBoardingViewActive = true
                }
            })  {
               Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                isAnimating = true
            })
        })
    }
}

#Preview {
    HomeView()
}
