//
//  AlertPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct AlertPage: View {
	@State var showAlert = false
	
	var body: some View {
		Button(action: {
			self.showAlert = true
			print("Tap")
		}) {
			Text("Click")
				.font(.system(size: 40,
							  design: .rounded))
			}.presentation($showAlert, alert: {
				Alert(title: Text("Confirmar la operación"),
					  message: Text("¿Estás seguro?"),
					  primaryButton: .destructive(Text("Sí")) { print("Consola: Sí") },
					  secondaryButton: .cancel() { print("Consola: Cancel") })
			}).navigationBarTitle(Text("Alert"))
	}
}

#if DEBUG
struct AlertPage_Previews : PreviewProvider {
	static var previews: some View {
		AlertPage()
	}
}
#endif
