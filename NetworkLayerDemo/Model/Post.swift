//
//  Post.swift
//  NetworkLayerDemo
//
//  Created by Abdulsalam Mansour on 1/5/20.
//  Copyright © 2020 abdulsalam. All rights reserved.
//

import Foundation

struct Post: Codable {
    let id: Int
    let title: String
    let body: String
    let userId: Int
}
