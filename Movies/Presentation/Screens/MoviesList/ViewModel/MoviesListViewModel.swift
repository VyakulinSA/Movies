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
	
	//TODO: добавить наблюдаемое свойство с настройками ячейки( как в myComics) , у collectionView пописать под изменения этого свойства во вью модел, если изменилось, надо пересчитать размеры ячейки и остальное все, и перезагрузить коллекцию
	//TODO: У контроллера сделать кнопку, при нажатии она вызывает метод у вьюмодел для смены вида ячейки, а та после смены, вызывает действия наблюдателей
	//TODO: все действия(смена вида кнопки, смена вида ячейки, еще любые пересчеты) кроме самого изменения, должны исполняться через наблюдение, а не в методе нажатия кнопки
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
		getMoviesUseCase.execute(countMovies: 50) { result in
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
