//
//  ContentView.swift
//  CoinX
//
//  Created by Kelvin on 6/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            print(Bundle.main.infoDictionary?["API_KEY"] as? String)
        }
    }
}

#Preview {
    ContentView()
}
