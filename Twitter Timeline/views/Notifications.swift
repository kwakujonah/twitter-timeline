//
//  Notifications.swift
//  Twitter Timeline
//
//  Created by Kwaku Jonah on 06/08/2023.
//

import SwiftUI

struct Notifications: View {
    var body: some View {
        NavigationStack{
            VStack {
                
                
            }
            .background(Color("bg-color"))
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        Image("me").resizable().frame(width: 42, height: 42).clipShape(Circle())
                    }
                    ToolbarItem(placement: .principal){
                        Text("Notifications")
                    }
                    ToolbarItem(placement: .automatic){
                        Image(systemName: "gearshape").resizable().frame(width: 24, height: 24)
                    }
                }
        }
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}
