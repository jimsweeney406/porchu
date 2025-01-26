//
//  Post.swift
//  porchu
//
//  Created by James Sweeney on 1/25/25.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownderUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
    
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString,
        ownderUid: NSUUID().uuidString,
        caption: "Swimming free",
        likes:  24,
        imageUrl: "helen",
        timestamp: Date(),
        user: User.MOCK_USERS[0]
        ),
        .init(id: NSUUID().uuidString,
        ownderUid: NSUUID().uuidString,
        caption: "Life is good",
        likes:  69,
        imageUrl: "harold",
        timestamp: Date(),
        user: User.MOCK_USERS[1]
        ),
        .init(id: NSUUID().uuidString,
        ownderUid: NSUUID().uuidString,
        caption: "I am tired of this",
        likes:  24,
        imageUrl: "dorothy",
        timestamp: Date(),
        user: User.MOCK_USERS[2]
        ),
        .init(id: NSUUID().uuidString,
        ownderUid: NSUUID().uuidString,
        caption: "Why hello there",
        likes:  24,
        imageUrl: "gustavo",
        timestamp: Date(),
        user: User.MOCK_USERS[3]
        ),
        .init(id: NSUUID().uuidString,
        ownderUid: NSUUID().uuidString,
        caption: "Kelp was great today!",
        likes:  24,
        imageUrl: "elaine",
        timestamp: Date(),
        user: User.MOCK_USERS[4]
        ),
        .init(id: NSUUID().uuidString,
        ownderUid: NSUUID().uuidString,
        caption: "Kelp was great today!",
        likes:  24,
        imageUrl: "hank",
        timestamp: Date(),
        user: User.MOCK_USERS[5]
        ),
        
        
    ]
}

