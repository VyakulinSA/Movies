//
//  GetMoviesUseCase.swift
//  Movies
//
//  Created by Вякулин Сергей on 01.02.2023.
//

import Foundation

protocol GetMoviesUseCase {
	func execute(countMovies: Int, completion: @escaping (Result<[Movie],Error>) -> Void)
}

final class GetMoviesUseCaseImp: GetMoviesUseCase {
	
	func execute(countMovies: Int, completion: @escaping (Result<[Movie], Error>) -> Void) {
		var movies: [Movie] = []
		for number in 0...countMovies{
			let movie = Movie(title: "Movie \(number)")
			movies.append(movie)
		}
		completion(.success(movies))
	}
	
	
}
