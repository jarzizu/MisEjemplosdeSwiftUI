//
//  GroupPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct GroupPage : View {
	
    var body: some View {
        VStack {
            Group {
                Text("Hello World !")
                Text("Hello World !")
                }
                .padding(5)
                .border(LinearGradient(gradient: Gradient(colors: [.red]), startPoint: .leading, endPoint: .trailing), width: 1, cornerRadius: 5)
            Group {
                Text("Hello World !")
                Text("Hello World !")
                }.padding(5)
                .border(LinearGradient(gradient: Gradient(colors: [.green]), startPoint: .leading, endPoint: .trailing), width: 1, cornerRadius: 5)
            Group {
                Text("Hello World !")
                Text("Hello World !")
                }.padding(5)
                .border(LinearGradient(gradient: Gradient(colors: [.blue]), startPoint: .leading, endPoint: .trailing), width: 1, cornerRadius: 5)
            }.navigationBarTitle(Text("Group"))
    }
}



#if DEBUG
struct GroupPage_Previews : PreviewProvider {
    static var previews: some View {
        GroupPage()
    }
}
#endif
