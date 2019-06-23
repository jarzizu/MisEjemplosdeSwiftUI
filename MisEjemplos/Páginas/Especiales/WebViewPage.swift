//
//  WebViewPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI
import WebKit

struct WebViewPage : UIViewRepresentable {
	func makeUIView(context: Context) -> WKWebView  {
		return WKWebView()
	}
	func updateUIView(_ uiView: WKWebView, context: Context) {
		let req = URLRequest(url: URL(string: "https://www.apple.es")!)
		uiView.load(req)
	}
}

#if DEBUG
struct WebViewPage_Previews : PreviewProvider {
	static var previews: some View {
		WebViewPage()
	}
}
#endif
