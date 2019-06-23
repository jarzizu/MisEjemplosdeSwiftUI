//
//  ForEachPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct ForEachPage: View {
	
	let data = (0..<9).map { $0 }
	
	var body: some View {
		ForEach(data) { item in
			Text("Hello \(item)")
				.bold()
				.font(.system(size: 25, design: .monospaced))
				.padding(5)
			}
			.border(LinearGradient(gradient: Gradient(colors: [.red, .green]), startPoint: .leading, endPoint: .trailing), width: 1,cornerRadius: 10)
			.navigationBarTitle(Text("ForEach"))
	}
}

#if DEBUG
struct ForEachPage_Previews : PreviewProvider {
	static var previews: some View {
		ForEachPage()
	}
}
#endif
