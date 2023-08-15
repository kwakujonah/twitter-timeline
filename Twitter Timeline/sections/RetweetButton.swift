//
//  RetweetButton.swift
//  Twitter Timeline
//
//  Created by Kwaku Jonah on 05/08/2023.
//

import SwiftUI

struct RetweetButton: View {
    
    var value: String
    
    var body: some View {
        HStack{
            Image("retweet").resizable().frame(width: 20, height: 20)
            Text(value).font(.system(size: 14))
        }
    }
}

struct RetweetButton_Previews: PreviewProvider {
    static var previews: some View {
        RetweetButton(value: "123")
    }
}
