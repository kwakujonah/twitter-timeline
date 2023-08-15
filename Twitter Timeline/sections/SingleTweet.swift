//
//  SingleTweet.swift
//  Twitter Timeline
//
//  Created by Kwaku Jonah on 05/08/2023.
//

import SwiftUI

struct SingleTweet: View {
    
    @State var dp: String
    @State var handle: String
    @State var username: String
    @State var isVerified: Bool
    @State var tweetTime: String
    @State var tweet: String
    
    @State var commentCount: Int
    @State var likeCount: Int
    @State var retweetCount: Int
    @State var analyticsCount: Int
    
    var body: some View {
        HStack(alignment: .top){
            Image(dp).resizable().frame(width: 44, height: 44).clipShape(Circle())
            VStack(alignment: .leading){
                HStack{
                    Text(handle).bold().font(.system(size: 14))
                    if isVerified{
                        Image("verified-badge").resizable().frame(width: 16, height: 16)
                    }
                    Text(username).font(.system(size: 14))
                    Text("1 hr").font(.system(size: 14))
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                Text(tweet).font(.system(size: 16))
                HStack(spacing: 18){
                    CommentButton(value: "23")
                    LikeButton(value: "128")
                    RetweetButton(value: "5")
                    AnalyticsButton(value: "11.4m")
                }.padding(EdgeInsets(top: 6, leading: 0, bottom: 0, trailing: 0))
            }
        }
    }
}

struct SingleTweet_Previews: PreviewProvider {
    static var previews: some View {
        SingleTweet(dp: "verified-badge", handle: "kwaku.jonah116", username: "kwaku.jonah116", isVerified: true, tweetTime: "1 hr", tweet: "dkslg ng lnjfg lnfgljsfljgnld fngsld jnflgn dflng ldfngl dflg", commentCount: 32, likeCount: 114, retweetCount: 4, analyticsCount: 2113)
    }
}
