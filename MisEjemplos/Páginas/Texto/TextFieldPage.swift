//
//  TextFieldPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct TextFieldPage : View {
	
	@State var name: String = ""
	@State var password: String = ""
	
	let nameText = Text("Introduzca su usuario").color(.secondary).font(.system(size: 16))
	let pwdText = Text("Introduzca su password").color(.secondary).font(.system(size: 16))
	
	var body: some View {
		VStack(spacing: 15) {
			HStack {
				Text("Usuario: ").color(.secondary)
				TextField(self.$name, placeholder: self.nameText, onEditingChanged: { changed in
					print("onEditing: \(changed)")
				}) {
					print("Usuario \(self.name)")
					self.endEditing(true)
				}}
				.padding(10) // 内间距
				.frame(height: 50)
				.textFieldStyle(.roundedBorder)
				.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
			
			HStack {
				Text("Passsword: ").color(.secondary)
				SecureField(self.$password, placeholder: self.pwdText) {
					print("Password \(self.password)")
					self.endEditing(true)
				}}
				.padding(10)
				.frame(height: 50)
				.textFieldStyle(.roundedBorder)
				.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
			
			}.offset(y: -150)
			.navigationBarTitle(Text("TextField"))
	}
	
	private func endEditing(_ force: Bool) {
		UIApplication.shared.keyWindow?.endEditing(force)
	}
}

// https://stackoverflow.com/questions/56491386/how-to-hide-keyboard-when-using-swiftui


#if DEBUG
struct TextFieldPage_Previews : PreviewProvider {
	static var previews: some View {
		TextFieldPage()
	}
}
#endif

