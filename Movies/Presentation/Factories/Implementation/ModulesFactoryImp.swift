//
//  ModulesFactoryImp.swift
//  Movies
//
//  Created by Вякулин Сергей on 29.01.2023.
//

import Foundation

final class ModulesFactoryImp: ModulesFactory{
	func makeMoviesListModule() -> MoviesListViewController {
		return MoviesListViewController()
	}
	
}
