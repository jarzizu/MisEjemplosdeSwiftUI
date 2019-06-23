//
//  PageRow.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 22/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct PageRow: View {
	private let title: String
	private let subtitle: String?
	
	
	init(title: String, subtitle: String? = nil) {
		self.title = title
		self.subtitle = subtitle
	}
	
	var body: some View {
		VStack(alignment: .leading, spacing: 5) {
			Text(title)
				.bold()
			if subtitle != nil {
				Text(subtitle!)
					.font(.subheadline)
					.opacity(0.5)
					.lineLimit(nil)
			}
		}
		
		
	}
}


#if DEBUG
struct PageRow_Previews : PreviewProvider {
	static var previews: some View {
		PageRow(title: "1", subtitle: "2")
	}
}
#endif
