//
//  Model.swift
//  youtube-onedaybuild
//
//  Created by Lamin Tamba on 10/08/2020.
//

import Foundation

protocol ModelDeledate {
    func videosFetched(_ videos: [Video])
}

class Model {
    var deledate: ModelDeledate?
    
    func getVideos() {
        // Create a URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else { return }
        
        // Get URLSession object
        let session = URLSession.shared
        
        // Get a dataTask from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            // Check if there where any errors
            if error != nil || data == nil {
                return
            }
            
            do {
                // Parsing the data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                let response = try decoder.decode(Response.self, from: data!)
                
                if response.items != nil {
                    DispatchQueue.main.async {
                    // Call the "videosFetched" method of the delegate
                    self.deledate?.videosFetched(response.items!)
                    }
                }
                
                
                dump(response)
                
            } catch {
                
            }
            
            
            
        }
        
        // Kick off the task
        dataTask.resume()
    }
}
