//
//  CoordinatorFactory.swift
//  Movies
//
//  Created by Вякулин Сергей on 28.01.2023.
//

import Foundation

protocol CoordinatorFactory: AnyObject{
	func makeApplicationCoordinator(windowsFactory: WindowsFactory) -> Coordinator
	func makeMoviesListCoordinator() -> Coordinator
}
