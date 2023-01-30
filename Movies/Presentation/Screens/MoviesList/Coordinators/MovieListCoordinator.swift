//
//  MovieListCoordinator.swift
//  Movies
//
//  Created by Вякулин Сергей on 27.01.2023.
//

import Foundation

final class MovieListCoordinator: BaseCoordinator {
	private let screensFactory: ScreensFactory
	
	init(screensFactory: ScreensFactory, router: Router, coordinatorsFactory: CoordinatorsFactory) {
		self.screensFactory = screensFactory
		super.init(router: router, coordinatorsFactory: coordinatorsFactory)
	}
	
	override func start() {
		let screen = screensFactory.makeMoviesListScreen()
		router.push(screen, animated: true)
	}
	
}

private extension MovieListCoordinator {
	func showMovieDetail(){
		
	}
}
