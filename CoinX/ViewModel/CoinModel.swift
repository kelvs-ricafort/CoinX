//
//  CoinModel.swift
//  CoinX
//
//  Created by Kelvin on 6/29/24.
//

import Foundation
import SwiftUI

@Observable
class CoinModel {
    var coinList = [Coin]()
    var selectedCoin: Coin?
    
    var dataService = DataService()
    
    func getCoins() {
        Task {
            coinList = await DataService().getCoinsList()
        }
    }
}
