//
//  RootCoordinator.swift
//  Movies
//
//  Created by Вякулин Сергей on 27.01.2023.
//

final class ApplicationCoordinator: BaseCoordinator {

	lazy private var window = windowsFactory.makeWindow(with: .firstScene)
	
	private let windowsFactory: WindowsFactory
	
	init(windowsFactory: WindowsFactory, router: Router, coordinatorsFactory: CoordinatorsFactory) {
		self.windowsFactory = windowsFactory
		super.init(router: router, coordinatorsFactory: coordinatorsFactory)
	}
	
	override func start() {
		window.makeKeyAndVisible()
		runMovieListFlow()
	}
}

private extension ApplicationCoordinator {
	func runMovieListFlow() {
		let coordinator = coordinatorsFactory.makeMoviesListCoordinator()
		addDependency(coordinator)
		coordinator.start()
	}
}
