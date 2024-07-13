//
//  DataService.swift
//  CitySights App
//
//  Created by Abdulla Ahmad on 7/13/24.
//

import Foundation

struct DataService {
    
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    
    
    func businessSearch() async{
        // Check if api exist
        guard apiKey != nil else{
            return
        }
        // 1. Create url
        if let url = URL(string: "https://api.yelp.com/v3/businesses/search?latitude=37.785834&longitude=-122.406417&catigories=restauranst&limit=10"){
            // 2. Create request
            var request = URLRequest(url: url)
            request.addValue("Bearer \(apiKey!)", forHTTPHeaderField: "Authorization")
            request.addValue("application/json", forHTTPHeaderField: "accept")
            
            // 3. Send request
            do{
                let (data,response) =  try await URLSession.shared.data(for: request)
                
                print(data)
                print(response)
            }
            catch{
                print (error)
            }
        }
        
        
        
        
    }
}
