//
//  Post.swift
//  MVVM With Api Call Example
//
//  Created by amit pandey on 13/01/21.
//  Copyright © 2021 Xavient. All rights reserved.
//

import Foundation

struct Post : Decodable{
    let id: Int
    let title: String
    let body: String
    
    private enum CodingKeys: String, CodingKey{
        case id
        case title
        case body
    }
}
