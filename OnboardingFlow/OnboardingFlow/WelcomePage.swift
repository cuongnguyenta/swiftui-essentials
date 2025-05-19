//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by Cuong Nguyen on 5/19/25.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }
            
            Text("Welcome to My App")
                .font(Font.title)
                .fontWeight(.semibold)
                .padding(.top)
            
            Text("This is an app I create for practice Swift and SwiftUI")
                .font(Font.title2)
                .multilineTextAlignment(.center)
            
        }
        .padding()
    }
}

#Preview {
    WelcomePage()
}
