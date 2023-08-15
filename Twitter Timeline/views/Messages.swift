//
//  Messages.swift
//  Twitter Timeline
//
//  Created by Kwaku Jonah on 06/08/2023.
//

import SwiftUI

struct Messages: View {
    
    @State private var searchValue = "Search Direct Messages"
    
    var body: some View {
        NavigationStack{
            VStack {
                HStack{
                    Spacer()
//                    Image(systemName: "magnifyingglass").resizable().frame(width: 20, height: 20)
//                    TextEditor(text: $searchValue)
//                                .frame(height:42)
//                                .scrollContentBackground(.hidden)
//                                .background(Color("search-bar"))
                    TextField("Search Direct Messages", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/).frame(height:42).multilineTextAlignment(.center)
                    Spacer()
                }
                .background(Color("search-bar"))
                .clipShape(Capsule())
                .padding()
                
                List(){
                    SingleMessage(dp: "atsu", handle: "@AtsuGator", username: "Joshua", isVerified: false, tweetTime: "1 hr", tweet: "I dey try download am... E no dey fit")
                    SingleMessage(dp: "dangerous", handle: "@Dangerous", username: "Joe Wackle Gh", isVerified: false, tweetTime: "1 hr", tweet: "Helloooooooo")
                    SingleMessage(dp: "oak-merchant", handle: "@theoakmerchant", username: "THE OAK STORE", isVerified: false, tweetTime: "1 hr", tweet: "MONDAY")
                }.listStyle(.plain)
            }
            
            .background(Color("bg-color"))
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        Image("me").resizable().frame(width: 42, height: 42).clipShape(Circle())
                    }
                    ToolbarItem(placement: .principal){
                        Text("Messages")
                    }
                }
        }
    }
}

struct Messages_Previews: PreviewProvider {
    static var previews: some View {
        Messages()
    }
}
