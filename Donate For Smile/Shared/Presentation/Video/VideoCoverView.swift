//
//  VideoCoverView.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 11/03/22.
//

import SwiftUI

struct VideoCoverView: View {
    
    @State private var showingVideoPlayer = false
    
    var idVideo = ""
    
    var body: some View {
        ZStack {
            Image("cover_campaign_education")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 155)
            Button(action: {
                showingVideoPlayer = true
            }, label: {
                Image("playbutton_icon")
                    .frame(width: 42, height: 42)
                
            }).sheet(isPresented: $showingVideoPlayer, content: {
                SwiftUIVideoView(url: URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!)
            })
            
        }.cornerRadius(5)
    }
}

struct VideoCoverView_Previews: PreviewProvider {
    static var previews: some View {
        VideoCoverView()
    }
}
