//
//  HStackPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct HStackPage : View {
	var body: some View {
		HStack {
			Text("Una vista a este lado")
			Divider()
			Text("Otra vista a este otro lado")
		}
	}
}

#if DEBUG
struct HStackPage_Previews : PreviewProvider {
	static var previews: some View {
		HStackPage()
	}
}
#endif
