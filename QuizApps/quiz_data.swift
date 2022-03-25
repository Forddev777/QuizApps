//
//  quiz_data.swift
//  QuizApps
//
//  Created by suriya taothongkom on 24/3/2565 BE.
//

import Foundation


struct town {
    let name: String
    var citizens: [String]
    var resource: [String: Int]
    
    
    init(townName: String , citizens:[String] , resource: [String: Int ]){
        self.name = townName
        self.citizens = citizens
        self.resource = resource
        
    }

}
