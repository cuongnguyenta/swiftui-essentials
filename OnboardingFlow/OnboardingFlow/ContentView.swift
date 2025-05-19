//
//  ContentView.swift
//  OnboardingFlow
//
//  Created by Cuong Nguyen on 5/19/25.
//

import SwiftUI

let gradientColor: [Color] = [
    .gradientTop,
    .gradientBottom,
]

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturePage()
        }
        .background(Gradient(colors: gradientColor))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
