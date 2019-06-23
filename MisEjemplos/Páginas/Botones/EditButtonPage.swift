//
//  EditButtonPage.swift
//  MisEjemplos
//
//  Created by Javier Rivas on 23/06/2019.
//  Copyright © 2019 Javier Rivas. All rights reserved.
//

import SwiftUI
import Combine


struct EditButtonPage: View {
	
	@State private var users = dataSource()
	
	var body: some View {
		List {
			ForEach(users.items) { idx in
				PageRow(title: "\(idx)")
				}
				.onDelete(perform: deletePlace)
				.onMove(perform: movePlace)
			}
			.navigationBarTitle(Text("Editar Fila"), displayMode: .large)
			.navigationBarItems(trailing: EditButton())
	}
	
	func deletePlace(at offset: IndexSet) {
		if let last = offset.last?.id {
			users.items.remove(at: last)
			print(users.items.count)
			print("Consola: Items después de borrar: \(self.users.items)")
		}
	}
	
	func movePlace(from source: IndexSet, to destination: Int) {
		let reversedSource = source.sorted()
		for index in reversedSource.reversed() {
			users.items.insert(users.items.remove(at: index), at: destination)
			print("Consola: Items despues de mover: \(self.users.items)")
		}
	}
}

class dataSource: BindableObject {
	public var didChange = PassthroughSubject<Void, Never>()
	public var items: [Int] {
		didSet {
			didChange.send(())
		}
	}
	
	init() {
		self.items = (0..<10).map { $0 }
		print("Consola: Items creados: \(self.items)")
	}
}
	

#if DEBUG
struct EditButtonPage_Previews : PreviewProvider {
	static var previews: some View {
		ButtonPage()
	}
}
#endif
