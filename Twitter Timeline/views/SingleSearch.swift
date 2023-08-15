//
//  SingleSearch.swift
//  Twitter Timeline
//
//  Created by Kwaku Jonah on 06/08/2023.
//

import SwiftUI

struct SingleSearch: View {
    
    @State var dp: String
    @State var handle: String
    @State var username: String
    @State var isVerified: Bool
    
    var body: some View {
        HStack(alignment: .center){
            Image(dp).resizable().frame(width: 48, height: 48).clipShape(Circle())
            VStack(alignment: .leading){
                HStack{
                    Text(handle).bold().font(.system(size: 18))
                    if isVerified{
                        Image("verified-badge").resizable().frame(width: 16, height: 16)
                    }
                }
                Text(username).font(.system(size: 14))
            }
            Spacer()
            Image(systemName: "xmark").resizable().frame(width: 14, height: 14).foregroundColor(Color("twitter-blue"))
        }
        .padding([.leading,.trailing], 10)
    }
}

struct SingleSearch_Previews: PreviewProvider {
    static var previews: some View {
        SingleSearch(dp: "verified-badge", handle: "kwaku.jonah116", username: "kwaku.jonah116", isVerified: true)
    }
}
