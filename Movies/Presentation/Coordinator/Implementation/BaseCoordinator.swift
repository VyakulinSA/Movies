//
//  BaseCoordinator.swift
//  Movies
//
//  Created by Вякулин Сергей on 29.01.2023.
//

import Foundation

class BaseCoordinator: Coordinator{

	let router: Router
	let coordinatorsFactory: CoordinatorsFactory
	
	var childCoordinators: [Coordinator]
	
	internal init(router: Router, coordinatorsFactory: CoordinatorsFactory) {
		self.router = router
		self.coordinatorsFactory = coordinatorsFactory
		self.childCoordinators = []
	}
	
	func addDependency(_ coordinator: Coordinator) {
		for element in childCoordinators where element === coordinator {
			return
		}
		childCoordinators.append(coordinator)
	}
	
	func removeDependency(_ coordinator: Coordinator?) {
		guard !childCoordinators.isEmpty,
			  let coordinator = coordinator,
			  let index = childCoordinators.firstIndex(where: {$0 === coordinator})
		else { return }
		childCoordinators.remove(at: index)
	}
	
	func start() {}
}
