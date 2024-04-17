//
//  CircleGroupView.swift
//  Restart
//
//  Created by Amir on 1/29/1403 AP.
//

import SwiftUI

struct CircleGroupView: View {
    // MARK: - PROPERTIES
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    ShapeColor.opacity(ShapeOpacity),
                    lineWidth: 40
                )
                .frame(
                    width: 260,
                    height: 260,
                    alignment: .center
                )
            Circle()
                .stroke(
                    ShapeColor.opacity(ShapeOpacity),
                    lineWidth: 80
                )
                .frame(
                    width: 260,
                    height: 260,
                    alignment: .center
                )
        }
    }
}

#Preview {
    ZStack {
        Color.customBlue
            .ignoresSafeArea(.all, edges: .all)
        CircleGroupView(
            ShapeColor: .white,
            ShapeOpacity: 0.2
        )
    }
}
