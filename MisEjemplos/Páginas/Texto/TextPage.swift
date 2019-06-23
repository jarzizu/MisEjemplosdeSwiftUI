//
//  TextPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

let github = "https://github.com/jarzizu/SwiftUI"

struct TextPage : View {
	
	var body: some View {
		VStack(spacing: 25) {
			Text("SwiftUI") 
			Text("SwiftUI")
				.color(.green)
				.bold()
				.font(.system(.largeTitle))
				.fontWeight(.medium)
				.italic()
				.shadow(color: .red, radius: 1, x: 0, y: 2)
			
			Text(github)
				.underline(true, color: Color.blue)
				.font(.system(size: 16, design: .serif)).tapAction {
					print(github)
			}
			
			HStack {
				Text("Text")
				Text("TextField").bold()
				Text("SecureField").color(.yellow)
			}
			VStack (spacing: 20){
				Text("Las vistas y los controles son los componentes visuales de la interfaz de usuario de la aplicación.")
				Text (" Úsalos para presentar el contenido de tu aplicación en pantalla.")
				}
				.lineLimit(nil)
				.multilineTextAlignment(.center)
		}
	}
}


#if DEBUG
struct TextPage_Previews : PreviewProvider {
	static var previews: some View {
		TextPage()
	}
}
#endif
