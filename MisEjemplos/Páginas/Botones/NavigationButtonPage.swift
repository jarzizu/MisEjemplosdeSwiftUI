//
//  NavigationButtonPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct NavigationButtonPage: View {
	var body: some View {
		NavigationButton(destination: self) {
			Text("NavigationButton")
				.bold()
				.color(.red)
				.font(.largeTitle)
		}
		.navigationBarTitle(Text("Página"), displayMode: .inline)
		
	}
}


#if DEBUG
struct NavigationButtonPage_Previews : PreviewProvider {
	static var previews: some View {
		NavigationButtonPage()
	}
}
#endif
