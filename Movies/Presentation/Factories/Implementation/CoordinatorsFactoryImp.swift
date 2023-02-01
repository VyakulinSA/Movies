//
//  CoordinatorsFactoryImp.swift
//  Movies
//
//  Created by Вякулин Сергей on 29.01.2023.
//

import Foundation

final class CoordinatorsFactoryImp: CoordinatorsFactory {
	private let router: Router
	private let screensFactory: ScreensFactory
	
	internal init(router: Router, modulesFactory: ScreensFactory) {
		self.router = router
		self.screensFactory = modulesFactory
	}
	
	func makeApplicationCoordinator(windowsFactory: WindowsFactory) -> Coordinator {
		return ApplicationCoordinator(windowsFactory: windowsFactory, router: router, coordinatorsFactory: self)
	}
	
	func makeMoviesListCoordinator() -> Coordinator {
		return MoviesListCoordinator(screensFactory: screensFactory, router: router, coordinatorsFactory: self)
	}
	
	
	
}
