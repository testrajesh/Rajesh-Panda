//
//  Service.swift
//  MVVM Practice
//
//  Created by Rajesh Panda on 28/06/22.
//

import UIKit

class Service: NSObject {

    static let sharedInstance = Service()
    
    func getAllData(completion: @escaping(DataModel?, Error?) -> ()) {
        let urlString = "https://api.coinbase.com/v2/currencies"
        guard let url = URL(string: urlString) else {return}
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let err = error {
                completion(nil, err)
                print("error in loading\(err.localizedDescription)")
            }else {
                guard let data = data else {return}
                do {
                    
                    let results = try JSONDecoder().decode(DataModel.self, from: data)
                    for data in results.data {
                        print(data.name!)
                    }
                } catch let jsonError {
                    print("json error\(jsonError.localizedDescription)")
                }
            }
        }.resume()
    }
}
