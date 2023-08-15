//
//  Search.swift
//  Twitter Timeline
//
//  Created by Kwaku Jonah on 05/08/2023.
//

import SwiftUI

struct Search: View {
    
    @State private var searchValue = ""
    
    var body: some View {
        NavigationStack{
            VStack {
                HStack{
                    Image("me").resizable().frame(width: 42, height: 42).clipShape(Circle())
//                    TextEditor(text: $searchValue)
//                                .frame(height:42)
//                                .scrollContentBackground(.hidden)
//                                .background(Color("search-bar"))
//                                .clipShape(Capsule())
                    HStack{
                        Image(systemName: "magnifyingglass").resizable().frame(width: 20, height: 20).padding([.leading], 15)
                        TextEditor(text: $searchValue)
                                    .frame(height:42)
                                    .scrollContentBackground(.hidden)
                                    .background(Color("search-bar"))
                    }
                    .background(Color("search-bar"))
                    .clipShape(Capsule())
                    Image(systemName: "gearshape").resizable().frame(width: 24, height: 24)
                }
                .padding([.leading, .trailing, .bottom])
                HStack{
                    Text("Recent").bold().font(.system(size: 20))
                    Spacer()
                    Text("Clear All").foregroundColor(Color("twitter-blue"))
                }.padding([.leading, .trailing],20)
                
                List(){
                    SingleSearch(dp: "rae", handle: "@RAE", username: "valkyrae", isVerified: true)
                    SingleSearch(dp: "atsu", handle: "@AtsuGator", username: "Joshua", isVerified: false)
                }.listStyle(.plain)
            }
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
