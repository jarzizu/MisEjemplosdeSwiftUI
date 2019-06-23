//
//  PopoverPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct PopoverPage : View {
	
	@State var showPop = false
	
	var body: some View {
		VStack {
			Button(action: {
				self.showPop = true
				print(self.showPop)
			}) {
				Text("Popover")
					.bold()
					.font(
						.system(
							.largeTitle, design: .monospaced))
				}
				.presentation(popView)
		}
	}
	
	private var popView: Popover? {
		
		// La siguiente devolución de llamada de Descartar, según la documentación oficial es: Acción que informa a la persona que llama cuando el popover ha sido descartado.
		// Pero de hecho, después de que el pop desaparece, no se puede activar la siguiente devolución de llamada de rechazo, que no se puede mostrar de nuevo, tal vez un error.
		let pop = Popover(content: ImagePage()) {
			print("Popover Dismiss !")
			self.showPop = false
		}
		return self.showPop ? pop:nil
	}
}

#if DEBUG
struct PopoverPage_Previews : PreviewProvider {
	static var previews: some View {
		PopoverPage()
	}
}
#endif
