//
//  ActionSheetPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct ActionSheetPage : View {
	
	@State var showSheet = false
	var body: some View {
		VStack {
			Button(action: {
				self.showSheet = true
			}) {
				Text("ActionSheet")
					.bold()
					.font(.system(.largeTitle,
								  design: .rounded))
				}.presentation(sheet)
		}
	}
	
	private var sheet: ActionSheet? {
		
		let action = ActionSheet(title: Text("Título"),
								 message: Text("Mensaje"),
								 buttons:
			[.default(Text("Por defecto"), onTrigger: {
				print("Default")
				self.showSheet = false
			}),.destructive(Text("Destructivo"), onTrigger: {
				print("destructive")
				self.showSheet = false
			}),.cancel({
				print("Cancelar")
				self.showSheet = false
			})])
		
		return self.showSheet ? action:nil
	}
}

#if DEBUG
struct ActionSheetPage_Previews : PreviewProvider {
	static var previews: some View {
		ActionSheetPage()
	}
}
#endif
