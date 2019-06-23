//
//  TogglePage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI
import Combine

struct TogglePage : View {
	
	@State var isOn = false
	
	var body: some View {
		HStack {
			Toggle(isOn: $isOn) {
				Text("State: \(self.isOn == true ? "true":"false")")
				}.padding(20)
			Spacer()
			}.navigationBarTitle(Text("Toggle"))
	}
}

#if DEBUG
struct TogglePage_Previews : PreviewProvider {
	static var previews: some View {
		TogglePage()
	}
}
#endif

