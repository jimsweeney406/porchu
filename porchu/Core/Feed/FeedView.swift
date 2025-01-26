//
//  FeedView.swift
//  porchu
//
//  Created by James Sweeney on 1/25/25.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(Post.MOCK_POSTS) { post in
                        FeedCell(post: post)
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("logo1")
                        .resizable()
                        .frame(width: 100, height: 39)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                    imageScale(.large)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
