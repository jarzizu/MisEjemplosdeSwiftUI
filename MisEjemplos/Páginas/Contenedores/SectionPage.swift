//
//  SectionPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct SectionPage : View {
	var body: some View {
		
		VStack {
			List {
				Section(header: Text("Cabecera de la sección 1"), footer: Text("Pie de la sección 1")) {
					ForEach(0..<3) {
						Text("Hello \($0)")
					}
				}
				Section(header: Text("Cabecera de la sección 2"), footer: Text("Pie de la sección 2")) {
					ForEach(6..<10) {
						Text("Hola \($0)").bold()
					}
				}
				}
				.background(Color.white)
				.listStyle(.grouped)
			
			Button(action: {
				print("Consola: Tocado")
			}) {
				Text("SwiftUI")
					.color(.white)
					.frame(width: UIScreen.main.bounds.width - 30,height: 45)
				}
				.background(Color.orange)
				.cornerRadius(5)
			}
			.background(Color.white)
			.navigationBarTitle(Text("Section"))
	}
}

#if DEBUG
struct SectionPage_Previews : PreviewProvider {
	static var previews: some View {
		SectionPage()
	}
}
#endif
