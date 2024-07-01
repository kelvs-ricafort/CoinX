//
//  ContentView.swift
//  CoinX
//
//  Created by Kelvin on 6/29/24.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(CoinModel.self) var coinModel
    @State var query = ""
    
    var body: some View {
        @Bindable var model = coinModel
        VStack {
            HStack {
                TextField("Enter your favorite coin", text: $query)
                    .textFieldStyle(.roundedBorder)
                Button {
                    // TODO: Implement query
                } label: {
                    Image(systemName: "magnifyingglass")
                        .padding(.horizontal)
                        .frame(height: 32)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                }
            }
            .padding(.horizontal)
            VStack {
                List(model.coinList) { coin in
                    Text(coin.name)
                }
                .listStyle(.plain)
            }
        }
        .padding()
        .onAppear {
            // Tell the ViewModel to fetch
            model.getCoins()
        }
        .sheet(item: $model.selectedCoin) { coin in
            CoinDetailsView()
        }
    }
}

#Preview {
    ContentView()
        .environment(CoinModel())
}
