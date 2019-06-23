//
//  ModalPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct ModalPage : View {
	
	@State var showModal = false
	
	var modal: Modal {
		return Modal(PickerPage(), onDismiss: {
			print("Vista despedida !")
			self.showModal = false
		})
	}
	
	var body: some View {
		VStack {
			Button(action: {
				self.showModal = true
			}) {
				Text("Modal View")
					.bold()
					.font(.system(.largeTitle,
								  design: .monospaced))
				}
				.presentation(showModal ? modal:nil)
		}
	}
}

#if DEBUG
struct ModalPage_Previews : PreviewProvider {
	static var previews: some View {
		ModalPage()
	}
}
#endif
