//
//  UseCasesFactory.swift
//  Movies
//
//  Created by Вякулин Сергей on 01.02.2023.
//

import Foundation

protocol UseCasesFactory {
	func makeGetMoviesUseCase() -> GetMoviesUseCase
}

final class UseCasesFactoryImp: UseCasesFactory {
	func makeGetMoviesUseCase() -> GetMoviesUseCase {
		return GetMoviesUseCaseImp()
	}
}
