//
//  Coin.swift
//  CoinX
//
//  Created by Kelvin on 6/29/24.
//

import Foundation

struct Coin: Decodable, Identifiable {
    var id: String
    var symbol: String
    var name: String
    var current_price: Double
}
