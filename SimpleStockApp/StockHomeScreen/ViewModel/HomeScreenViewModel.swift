//
//  HomeScreenViewModel.swift
//  SimpleStockApp
//
//  Created by Shubham Baliyan on 17/06/24.
//

import Foundation

class StockQuotesViewModel {
    
    
    var stockQuotes: [StockQuote] = []
    var errorMessage: String?
    
    
    func fetchStockQuotes(completion: @escaping () -> Void) {
        let urlString = "https://api.tickertape.in/stocks/quotes?sids=RELI%2CTCS%2CITC%2CHDBK%2CINFY"
        guard let url = URL(string: urlString) else {
            self.errorMessage = "Invalid Url"
            completion()
            return
        }
        let task = URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
             
            if let error = error {
                self?.errorMessage = "failed to fetch data: \(error.localizedDescription)"
                completion()
                return
            }
            
            
            guard let data = data else {
                self?.errorMessage = "No data recieved"
                completion()
                return
            }
            
            do {
                let quotes = try JSONDecoder().decode([StockQuote].self, from: data)
                self?.stockQuotes = quotes
                self?.errorMessage = nil
            }catch{
                self?.errorMessage = "failed to decode"
            }
            completion()
        }
            task.resume()
    }
    
  
}


