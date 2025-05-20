//
//  FinalPage.swift
//  OnboardingFlow
//
//  Created by Cuong Nguyen on 5/20/25.
//

import SwiftUI

struct FinalPage: View {
    var body: some View {
        VStack(alignment: .center) {
            Image(uiImage: ._3)
            Text("Secure your financial future with us!")
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text("Let our app handle your bills while you focus on things that matter the most.")
                .multilineTextAlignment(.center)
                .padding(.leading, 32)
                .padding(.trailing, 32)
            Spacer()
            
            Button {
                
            } label: {
                Text("Let's get start")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
            }
            .clipShape(Capsule())
            .padding(.horizontal, 16)
            .padding(.bottom, 64)
            
        }
        .foregroundStyle(.white)
        .background(Gradient(colors: gradientColor))
    }
}

#Preview {
    FinalPage()
}
