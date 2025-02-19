//
//  CurrentUserProfileView.swift
//  porchu
//
//  Created by James Sweeney on 1/25/25.
//

import SwiftUI

struct CurrentUserProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // header
                VStack(spacing: 10) {
                    
                    // pic and stats
                    HStack {
                        Image("jim")
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
                        
                        Text("Chadwick Boseman")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text("Wakanda Forever")
                            .font(.footnote)
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
                
                LazyVGrid(columns: gridItems, spacing: 1) {
                    
                    ForEach(0...30, id: \.self) { index in
                        Image("helen")
                            .resizable()
                            .scaledToFill()
                        
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                    
                }
            }
        }
        }
    }


#Preview {
    CurrentUserProfileView()
}
