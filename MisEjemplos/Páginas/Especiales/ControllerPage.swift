//
//  ControllerPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

struct ControllerPage<T: UIViewController> : UIViewControllerRepresentable {
	
	typealias UIViewControllerType = UIViewController
	
	func makeUIViewController(context: UIViewControllerRepresentableContext<ControllerPage>) -> UIViewController {
		return T()
	}
	
	func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<ControllerPage>) {
		debugPrint("\(#function)：\(type(of: T.self))")
	}	
}
