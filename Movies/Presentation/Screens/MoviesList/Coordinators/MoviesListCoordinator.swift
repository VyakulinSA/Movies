//
//  MovieListCoordinator.swift
//  Movies
//
//  Created by Вякулин Сергей on 27.01.2023.
//

import Foundation

final class MoviesListCoordinator: BaseCoordinator {
	private let screensFactory: ScreensFactory
	
	init(screensFactory: ScreensFactory, router: Router, coordinatorsFactory: CoordinatorsFactory) {
		self.screensFactory = screensFactory
		super.init(router: router, coordinatorsFactory: coordinatorsFactory)
	}
	
	override func start() {
		let actions = MoviesListViewModelActions(showMovieDetails: showMovieDetails)
		let screen = screensFactory.makeMoviesListScreen(actions: actions)
		router.push(screen, animated: true)
	}
	
}

private extension MoviesListCoordinator {
	func showMovieDetails(movie: Movie){
		print("Show moview details action, index: \(movie.title ?? "nil")")
	}
}
