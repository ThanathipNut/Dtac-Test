//
//  CustomerDetail.swift
//  Test
//
//  Created by Thanathip Suppapantita on 8/4/20.
//  Copyright © 2020 Thanathip. All rights reserved.
//

import SwiftyJSON

struct FBPost {
    
    let id : String!
    let created_time : String!
    let message : String!
 
    init(json : JSON) {
        id = json["id"].stringValue
        created_time = json["created_time"].stringValue
        message = json["message"].stringValue
    }
    
}

