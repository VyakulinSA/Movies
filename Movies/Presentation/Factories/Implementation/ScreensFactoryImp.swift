//
//  ModulesFactoryImp.swift
//  Movies
//
//  Created by Вякулин Сергей on 29.01.2023.
//

import Foundation

final class ScreensFactoryImp: ScreensFactory{
	func makeMoviesListScreen() -> MoviesListViewController {
		return MoviesListViewController()
	}
	
}
