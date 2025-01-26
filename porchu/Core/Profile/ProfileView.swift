//
//  ProfileView.swift
//  porchu
//
//  Created by James Sweeney on 1/25/25.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    
    
    
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username})
    }
    
    var body: some View {
            
        ScrollView {
            // header
            VStack(spacing: 10) {
                
                // pic and stats
                HStack {
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    HStack(spacing: 8){
                        UserStatView(value: 3, title: "Posts")
                        
                        UserStatView(value: 300, title: "Followers")
                        
                        UserStatView(value: 24, title: "Following")
                    }
                }
                .padding(.horizontal)
                
                
                // name and bio
                VStack(alignment: .leading, spacing: 4) {
                    
                    if let fullName = user.fullName {
                        Text(fullName)
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                    if let bio = user.bio {
                        Text(bio)
                            .font(.footnote)
                    }
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.horizontal)
                
                // action button
                
                Button {
                    
                } label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 32)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray))
                }
                
                Divider()
            }
            // post grid view
            
            PostGridView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }

}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
