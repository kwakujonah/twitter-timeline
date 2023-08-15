//
//  CommentButton.swift
//  Twitter Timeline
//
//  Created by Kwaku Jonah on 05/08/2023.
//

import SwiftUI

struct CommentButton: View {
    
    var value: String
    
    var body: some View {
        HStack{
            Image("comment").resizable().frame(width: 20, height: 20)
            Text(value).font(.system(size: 14))
        }
        
    }
}

struct CommentButton_Previews: PreviewProvider {
    static var previews: some View {
        CommentButton(value: "23")
    }
}
