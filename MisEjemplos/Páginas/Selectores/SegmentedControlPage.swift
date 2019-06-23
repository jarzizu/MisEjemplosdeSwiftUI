//
//  SegmentedControlPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI
import Combine

struct SegmentedControlPage : View {
	
	@State var items = (0..<5).map { "S: \($0)" }
	@State var currentIndex = 0
	
	var body: some View {
		VStack {
			Text("SegmentedControl")
			SegmentedControl(selection: $currentIndex) {
				ForEach(0..<items.count) { index in
					Text(self.items[index]).tag(index)
				}
				}.tapAction {
					print("Consola: Índice actual: \(self.currentIndex)")
			}
		}
	}
}

#if DEBUG
struct SegmentedControlPage_Previews : PreviewProvider {
	static var previews: some View {
		SegmentedControlPage()
	}
}
#endif
