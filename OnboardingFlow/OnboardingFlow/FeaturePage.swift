//
//  FeaturePage.swift
//  OnboardingFlow
//
//  Created by Cuong Nguyen on 5/19/25.
//
import SwiftUI

struct FeaturePage: View {
    let features: [Feature] = [
        Feature(iconName: "message.badge.waveform", description: "Feel safety and comfortable when you are chatting with friends"),
        Feature(iconName: "phone.connection.fill", description: "Connect with each others quickly and high quantity")
    ]
    var body: some View {
        
        VStack {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top, 100)
            
            ForEach(features) { feature in
                FeatureCard(iconName: feature.iconName, description: feature.description)
            }
            Spacer()
        }
        .frame(maxHeight: .infinity)
        .padding()
        .background(Gradient(colors: gradientColor))
        .foregroundStyle(.white)
    }
}


#Preview {
    FeaturePage()
}
