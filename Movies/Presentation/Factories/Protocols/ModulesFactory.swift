//
//  ModulesFactory.swift
//  Movies
//
//  Created by Вякулин Сергей on 29.01.2023.
//

import Foundation

protocol ModulesFactory{
	func makeMoviesListModule() -> MoviesListViewController
}
