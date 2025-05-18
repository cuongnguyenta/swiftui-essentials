//
//  ContentView.swift
//  Day1
//
//  Created by Cuong Nguyen on 5/5/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
    }
}

#Preview {
    ContentView()
}
