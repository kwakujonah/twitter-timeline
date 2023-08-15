//
//  Timeline.swift
//  Twitter Timeline
//
//  Created by Kwaku Jonah on 05/08/2023.
//

import SwiftUI

struct Timeline: View {
    var body: some View {
        NavigationStack{
            VStack {
                List(){
                    SingleTweet(dp: "rae", handle: "@RAE", username: "valkyrae", isVerified: true, tweetTime: "1 hr", tweet: "i woke up to a text from QT asking if i was a swifty and i felt i needed to answer correctly as if my life was on the line", commentCount: 32, likeCount: 114, retweetCount: 4, analyticsCount: 2113)
                    SingleTweet(dp: "verified-badge", handle: "@RichUncleMike", username: "mike,bedzra", isVerified: true, tweetTime: "1 hr", tweet: "Just got an offer for my fifteenth job", commentCount: 32, likeCount: 114, retweetCount: 4, analyticsCount: 2113)
                    SingleTweet(dp: "atsu", handle: "@AtsuGator", username: "Joshua", isVerified: false, tweetTime: "1 hr", tweet: "Anime is trash (just kidding)", commentCount: 32, likeCount: 114, retweetCount: 4, analyticsCount: 2113)
                    SingleTweet(dp: "me", handle: "@kwaku.jonah116", username: "kwaku.jonah116", isVerified: true, tweetTime: "1 hr", tweet: "dkslg ng lnjfg lnfgljsfljgnld fngsld jnflgn dflng ldfngl dflg", commentCount: 32, likeCount: 114, retweetCount: 4, analyticsCount: 2113)
                    SingleTweet(dp: "dangerous", handle: "@Dangerous", username: "Joe Wackle Gh", isVerified: false, tweetTime: "1 hr", tweet: "i’ve been watching the editor’s cut of my film since friday. every watch gets better than the former. my team and i have a classic", commentCount: 32, likeCount: 114, retweetCount: 4, analyticsCount: 2113)
                    SingleTweet(dp: "happy-mc", handle: "@eddyacquah", username: "The Happy MC", isVerified: false, tweetTime: "1 hr", tweet: "Toyota Landcruisers and the Ford F150 making it on the 10,000km trip is no surprise but wow the Lexus RX 350 making it is mad impressive. Wow", commentCount: 32, likeCount: 114, retweetCount: 4, analyticsCount: 2113)
                }.listStyle(.plain)
            }.background(Color("bg-color"))
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        Image("me").resizable().frame(width: 42, height: 42).clipShape(Circle())
                    }
                    ToolbarItem(placement: .principal){
                        Image("x-logo").resizable().frame(width: 24, height: 24)
                    }
                }
        }
    }
}

struct Timeline_Previews: PreviewProvider {
    static var previews: some View {
        Timeline()
    }
}
