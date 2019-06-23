//
//  PresentationButtonPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct PresentationButtonPage: View {
	var body: some View {
		PresentationButton(destination:
			Group {
				Text("PresentationButton")
				Text("Se despliega una presentación que se puede cerrar deslizándola hacia abajo").lineLimit(nil)
			}) {
			Text("Esto es un PresentationButton")
			
		}
		
	}
	
}


#if DEBUG
struct PresentationButtonPage_Previews : PreviewProvider {
	static var previews: some View {
		PresentationButtonPage()
	}
}
#endif
