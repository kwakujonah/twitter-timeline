//
//  LikeButton.swift
//  Twitter Timeline
//
//  Created by Kwaku Jonah on 05/08/2023.
//

import SwiftUI

struct LikeButton: View {
    
    var value: String
    
    var body: some View {
        HStack{
            Image("like").resizable().frame(width: 20, height: 20)
            Text(value).font(.system(size: 14))
        }
    }
}

struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton(value: "3243")
    }
}
