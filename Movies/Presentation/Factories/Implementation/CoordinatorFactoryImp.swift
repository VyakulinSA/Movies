//
//  CoordinatorFactoryImp.swift
//  Movies
//
//  Created by Вякулин Сергей on 29.01.2023.
//

import Foundation

final class CoordinatorFactoryImp: CoordinatorFactory {
	private let router: Router
	private let modulesFactory: ModulesFactory
	
	internal init(router: Router, modulesFactory: ModulesFactory) {
		self.router = router
		self.modulesFactory = modulesFactory
	}
	
	func makeApplicationCoordinator(windowsFactory: WindowsFactory) -> Coordinator {
		return ApplicationCoordinator(windowsFactory: windowsFactory)
	}
	
	func makeMoviesListCoordinator() -> Coordinator {
		<#code#>
	}
	
	
	
}
