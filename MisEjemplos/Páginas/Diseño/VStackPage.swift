//
//  VStackPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct VStackPage : View {
	var body: some View {
		VStack {
			Text("Una vista arriba")
			Divider()
			Text("Otra vista abajo")
		}
	}
}

#if DEBUG
struct VStackPage_Previews : PreviewProvider {
	static var previews: some View {
		VStackPage()
	}
}
#endif
