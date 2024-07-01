//
//  CoinDetailsView.swift
//  CoinX
//
//  Created by Kelvin on 6/29/24.
//

import SwiftUI

struct CoinDetailsView: View {
    @Environment(CoinModel.self) var coinModel
    
    var body: some View {
        if let coin = coinModel.selectedCoin {
            VStack(alignment: .leading) {
                Text(coin.name)
                    .font(.largeTitle)
                
                Text("Current Price: \(String(format: "%.2f", coin.current_price))")
            }
        } else {
            Text("No coin selected")
        }
    }
}

#Preview {
    CoinDetailsView()
        .environment(CoinModel())
}
