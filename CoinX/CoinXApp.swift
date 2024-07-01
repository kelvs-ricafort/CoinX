//
//  CoinXApp.swift
//  CoinX
//
//  Created by Kelvin on 6/29/24.
//

import SwiftUI

@main
struct CoinXApp: App {
    
    @State var coinModel = CoinModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(coinModel)
        }
    }
}
