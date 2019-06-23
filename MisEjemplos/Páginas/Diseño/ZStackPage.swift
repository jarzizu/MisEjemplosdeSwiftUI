//
//  ZStackPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct ZStackPage : View {
	var body: some View {
		ZStack {
			Text("Una vista debajo")
			Divider()
			Text("Otra vista encima")
		}
	}
}

#if DEBUG
struct ZStackPage_Previews : PreviewProvider {
	static var previews: some View {
		ZStackPage()
	}
}
#endif

