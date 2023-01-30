//
//  ModulesFactory.swift
//  Movies
//
//  Created by Вякулин Сергей on 29.01.2023.
//

import Foundation

protocol ScreensFactory{
	func makeMoviesListScreen() -> MoviesListViewController
}
