//
//  SliderPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI
import Combine

struct SliderPage : View {
	
	@State var rating: Double = 0.0
	
	var body: some View {
		VStack {
			Text("Valor del Slider : \(Int(self.rating))")
			Slider(value: $rating, from: -50, through: 50, by: 1)
				.padding(30)
			
			}.navigationBarTitle(Text("Slider"))
	}
}



#if DEBUG
struct SliderPage_Previews : PreviewProvider {
	static var previews: some View {
		SliderPage()
	}
}
#endif
