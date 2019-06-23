//
//  ButtonPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 22/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct ButtonPage: View {
	
	var body: some View {
		Button(action: {
			print("Consola: Se ha tocado el botón")
		}) {
			Text("Soy un botón")
				.bold()
		}
			.navigationBarTitle(Text("Botón"))
	}
}


#if DEBUG
struct ButtonPage_Previews : PreviewProvider {
	static var previews: some View {
		ButtonPage()
	}
}
#endif
