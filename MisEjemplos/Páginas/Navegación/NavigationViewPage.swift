//
//  NavigationViewPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct NavigationViewPage : View {
	var body: some View {
		NavigationView {
			Text("🧚‍♂️🧚‍♀️🧜‍♂️🧜‍♀️🧞‍♂️🧞‍♀️").blur(radius: 5)
			Text("Swifter Swifter").bold().color(.orange).font(.largeTitle)
			}.navigationBarTitle(Text("NavigationView"))
			.navigationBarItems(trailing: Button(action: {
				print("Tap")
				
			}, label: {
				Text("Right").color(.orange)
			}))
	}
}

#if DEBUG
struct SpacerPage_Previews : PreviewProvider {
	static var previews: some View {
		NavigationViewPage()
	}
}
#endif
