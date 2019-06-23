//
//  TabBarPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI

struct TabBarPage : View {
	
	@State private var index = 0 // 默认选中索引
	
	let imgs = ["hot","recommend","search","tag","setting"]
	
	var body: some View {
		TabbedView(selection: $index) {
			ForEach(0 ..< imgs.count) { item in
				TabItemPage(index: item)
					.tabItemLabel(Image(self.imgs[item]))
					.tag(item)
			}
			}.navigationBarTitle(Text("TabBar"))
	}
}

fileprivate struct TabItemPage: View {
	
	var index: Int
	
	var body: some View {
		ZStack {
			Rectangle().foregroundColor(Color.orange)
			VStack {
				Text("\(index)")
					.color(.white)
					.font(.system(size: 100, design: .rounded))
					.bold()
				Image("icon2")
					.resizable()
					.frame(width: 200,height: 200)
			}
		}
	}
}


#if DEBUG
struct TabBarPage_Previews : PreviewProvider {
	static var previews: some View {
		TabBarPage()
	}
}
#endif
