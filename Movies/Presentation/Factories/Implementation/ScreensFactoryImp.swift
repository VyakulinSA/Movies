//
//  ModulesFactoryImp.swift
//  Movies
//
//  Created by Вякулин Сергей on 29.01.2023.
//

import Foundation

final class ScreensFactoryImp: ScreensFactory{
	private let useCasesFactory: UseCasesFactory
	
	init(useCasesFactory: UseCasesFactory) {
		self.useCasesFactory = useCasesFactory
	}
	
	func makeMoviesListScreen(actions: MoviesListViewModelActions) -> MoviesListViewController {
		let controller = MoviesListViewController()
		let viewModel = makeMoviesListViewModel(actions: actions)
		controller.setViewModel(viewModel)
		return controller
	}
	
	private func makeMoviesListViewModel(actions: MoviesListViewModelActions) -> MoviesListViewModel {
		return MoviesListViewModel(
			getMoviesUseCase: useCasesFactory.makeGetMoviesUseCase(),
			actions: actions
		)
	}
	
}
