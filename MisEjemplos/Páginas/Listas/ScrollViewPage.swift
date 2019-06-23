//
//  ScrollViewPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct ScrollViewPage : View {
//
	var body: some View {
		ScrollView {
			Text("SwiftUI").padding(20)
			Divider()
			Image("icon2")
				.resizable()
				.frame(width: 500, height: 500, alignment: .center)
			Divider()
			Text("Las vistas y controles son bloques de construcción vistuales de la interfaz de usuario de tus apps.")
			}
			.border(LinearGradient(gradient: Gradient(colors: [.red, .green]), startPoint: .leading, endPoint: .trailing), width: 10, cornerRadius: 10)
			.padding(10)
			.navigationBarTitle(Text("ScrollView"))
	}
}

#if DEBUG
struct ScrollViewPage_Previews : PreviewProvider {
	static var previews: some View {
		ScrollViewPage()
	}
}
#endif
