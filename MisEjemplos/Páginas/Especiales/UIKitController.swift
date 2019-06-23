//
//  UIKitController.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

class UIKitController: UIViewController {
	
	override func viewDidLoad() {
		
		view.addSubview(button)
		
	}
	
	lazy var button: UIButton = {
		let button = UIButton(type: .system)
		button.setTitle("Open SwiftUI View", for: .normal)
		button.titleLabel?.font = .boldSystemFont(ofSize: 30)
		button.setTitleColor(.orange, for: .normal)
		button.sizeToFit()
		button.center = view.center
		button.addTarget(self, action: #selector(openContentView),
						 for: .touchUpInside)
		return button
	}()
	
	@objc func openContentView() {
		
		let hostVC = UIHostingController(rootView: ContentView())
		present(hostVC, animated: true, completion: nil)
	}
	
}
