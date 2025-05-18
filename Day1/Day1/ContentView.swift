//
//  ContentView.swift
//  Day1
//
//  Created by Cuong Nguyen on 5/5/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack(spacing: 25) {
                Text("Knock, knock!")
                    .padding()
                    .background(.yellow, in: RoundedRectangle(cornerRadius: 8.0))
                    .shadow(radius: 8.0)
                Text("Who's there")
                    .padding()
                    .background(.teal, in: RoundedRectangle(cornerRadius: 8.0))
                    .shadow(radius: 8.0)
                Text("I'm Rhino")
                    .padding()
                    .background(.cyan, in: RoundedRectangle(cornerRadius: 8.0))
                    .shadow(radius: 8.0)

            }
            .padding()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    Text("funny")
                        .padding()
                        .background(.pink, in: RoundedRectangle(cornerRadius: 8.0))
                        .shadow(radius: 8.0)
                        .fixedSize()
                    Text("work hard")
                        .padding()
                        .background(.purple, in: RoundedRectangle(cornerRadius: 8.0))
                        .shadow(radius: 8.0)
                        .fixedSize()
                    Text("strong")
                        .padding()
                        .background(.green, in: RoundedRectangle(cornerRadius: 8.0))
                        .shadow(radius: 8.0)
                        .fixedSize()
                    Text("nomad")
                        .padding()
                        .background(.blue, in: RoundedRectangle(cornerRadius: 8.0))
                        .shadow(radius: 8.0)
                        .fixedSize()
                    Text("developer")
                        .padding()
                        .background(.orange, in: RoundedRectangle(cornerRadius: 8.0))
                        .shadow(radius: 8.0)
                        .fixedSize()
                    Text("builder")
                        .padding()
                        .background(.mint, in: RoundedRectangle(cornerRadius: 8.0))
                        .shadow(radius: 8.0)
                        .fixedSize()
                }
                .padding()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
