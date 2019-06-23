//
//  StepperPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI
import Combine

struct StepperPage : View {
	
	@State var value = 0
	
	var body: some View {
		HStack {
			Stepper(value: $value, step: 1, onEditingChanged: { valor in
				print(valor)
			}) {
				Text("Valor del Stepper: \(self.value)")
				}.padding(50)
			}.navigationBarTitle(Text("Stepper"))
	}
}

#if DEBUG
struct StepperPage_Previews : PreviewProvider {
	static var previews: some View {
		StepperPage()
	}
}
#endif
