//
//  SingleMessage.swift
//  Twitter Timeline
//
//  Created by Kwaku Jonah on 06/08/2023.
//

import SwiftUI

struct SingleMessage: View {
    
    @State var dp: String
    @State var handle: String
    @State var username: String
    @State var isVerified: Bool
    @State var tweetTime: String
    @State var tweet: String
    
    var body: some View {
        HStack(alignment: .top){
            Image(dp).resizable().frame(width: 48, height: 48).clipShape(Circle())
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
            }
        }
        .padding([.top, .bottom],4)
    }
}

struct SingleMessage_Previews: PreviewProvider {
    static var previews: some View {
        SingleMessage(dp: "verified-badge", handle: "kwaku.jonah116", username: "kwaku.jonah116", isVerified: true, tweetTime: "1 hr", tweet: "dkslg ng lnjfg lnfgljsfljgnld fngsld jnflgn dflng ldfngl dflg")
    }
}
