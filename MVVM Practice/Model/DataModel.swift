//
//  DataModel.swift
//  MVVM Practice
//
//  Created by Rajesh Panda on 28/06/22.
//

import UIKit

class DataModel: Decodable {
    var data: [Data]
    
    init(data:[Data]){
        self.data = data
    }
}

class Data: Decodable {
    var id: String?
    var name: String?
    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}
