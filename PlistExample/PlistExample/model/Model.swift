//
//  Model.swift
//  PlistExample
//
//  Created by Ashis Laha on 8/19/18.
//  Copyright © 2018 Ashis Laha. All rights reserved.
//

import Foundation

struct Employee: Codable { // Encoder, Decodable
    let name: String
    let age: String
    let company: String
}
