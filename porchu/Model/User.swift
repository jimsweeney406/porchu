//
//  User.swift
//  porchu
//
//  Created by James Sweeney on 1/25/25.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String
    
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Hank", profileImageUrl: "hank", fullName: "Hank", bio: "Atlantic Coaster", email: "hank@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Elaine", profileImageUrl: "elaine", fullName: "Elaine", bio: "Pacific Coaster", email: "helen@gmail.com"),
        .init(id: NSUUID().uuidString, username: "dorothy", profileImageUrl: "dorothy", fullName: "dorothy", bio: "Coder", email: "jim@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Gustavo", profileImageUrl: "gustavo", fullName: "Gustavo", bio: "Atlantic Coaster", email: "hank@gmail.com"),
        .init(id: NSUUID().uuidString, username: "harold", profileImageUrl: "harold", fullName: "Harold", bio: "Pacific Coaster", email: "helen@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Helen", profileImageUrl: "helen", fullName: "Helen", bio: "Coder", email: "jim@gmail.com")
    ]
}
