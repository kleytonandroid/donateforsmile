//
//  PostListView.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 23/03/22.
//

import SwiftUI

struct PostListView: View {
    
    var filterCategory: String = ""
    
    @StateObject var viewModel = PostListViewModel()
    
    @State var searchText: String = ""
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    SearchBarView(searchText: $searchText)
                        .frame(height: 60)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 22)
                    
                    LazyVStack(spacing: 20) {
                        ForEach(viewModel.posts) { post in
                            NavigationLink(destination: PostDetailView(model: post)) {
                                PostItemView(model: post)
                            }.buttonStyle(PlainButtonStyle())
                        }
                    }.padding(.horizontal, 16)
                }
            }
        }
        .onAppear {
            viewModel.fetchPosts()
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarTitle("Blog".localizedFirstUpperCased())
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView()
    }
}
