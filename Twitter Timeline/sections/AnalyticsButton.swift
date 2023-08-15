//
//  AnalyticsButton.swift
//  Twitter Timeline
//
//  Created by Kwaku Jonah on 05/08/2023.
//

import SwiftUI

struct AnalyticsButton: View {
    
    var value: String
    
    var body: some View {
        HStack{
            Image("analytics").resizable().frame(width: 16, height: 16)
            Text(value).font(.system(size: 14))
        }
    }
}

struct AnalyticsButton_Previews: PreviewProvider {
    static var previews: some View {
        AnalyticsButton(value: "2784")
    }
}
