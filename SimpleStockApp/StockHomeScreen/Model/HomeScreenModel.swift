//
//  HomeScreenModel.swift
//  SimpleStockApp
//
//  Created by Shubham Baliyan on 17/06/24.
//

import Foundation


struct StockQuote: Codable {
    let symbol: String
    let price: Double
    let Change: Double
    let ChangePercentage: Double
}

