//
//  MoviesListViewModel.swift
//  Movies
//
//  Created by Вякулин Сергей on 01.02.2023.
//

import Foundation

struct MoviesListViewModelActions {
	let showMovieDetails: (Movie) -> Void
}

protocol MoviesListViewModelInput {
	func viewDidLoad()
	func didSelectItem(at index: Int)
}

protocol MoviesListViewModelOutput {
	var items: Observable<[Movie]> {get}
}

final class MoviesListViewModel: MoviesListViewModelOutput {
	
	private let getMoviesUseCase: GetMoviesUseCase
	private let actions: MoviesListViewModelActions?
	
	var items: Observable<[Movie]> = Observable([])
	
	init(getMoviesUseCase: GetMoviesUseCase, actions: MoviesListViewModelActions? = nil){
		self.getMoviesUseCase = getMoviesUseCase
		self.actions = actions
	}
}

extension MoviesListViewModel: MoviesListViewModelInput {
	
	func viewDidLoad() {
		getMoviesUseCase.execute(countMovies: 5) { result in
			switch result {
			case .success(let movies):
				self.items.value = movies
			case.failure(_):
				print("Error")
			}
		}
	}
	
	func didSelectItem(at index: Int) {
		actions?.showMovieDetails(items.value[index])
	}
}
