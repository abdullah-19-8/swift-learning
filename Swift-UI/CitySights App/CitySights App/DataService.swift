//
//  DataService.swift
//  CitySights App
//
//  Created by Abdulla Ahmad on 7/13/24.
//

import Foundation

struct DataService {
    
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    
    
    func businessSearch() async -> [Business]{
        // Check if api exist
        guard apiKey != nil else{
            return [Business]()
        }
        // 1. Create url
        if let url = URL(string: "https://api.yelp.com/v3/businesses/search?latitude=37.785834&longitude=-122.406417&catigories=restauranst&limit=10"){
            // 2. Create request
            var request = URLRequest(url: url)
            request.addValue("Bearer \(apiKey!)", forHTTPHeaderField: "Authorization")
            request.addValue("application/json", forHTTPHeaderField: "accept")
            
            // 3. Send request
            do {
                let (data, _) = try await URLSession.shared.data(for: request)
                
                let decoder = JSONDecoder()
                let result = try decoder.decode(BusinessSearch.self, from: data)
                
                // Print the result for debugging
                return result.businesses
            } catch {
                print("Decoding error: \(error)")
            }
            
        }
        
        return [Business]()
        
        
    }
}
