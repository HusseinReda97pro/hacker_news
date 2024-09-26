//
//  PostData.swift
//  hacker_news
//
//  Created by Hussein Reda on 26/09/2024.
//

import Foundation


struct Results: Decodable {
    let hits : [Post]
}


struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
