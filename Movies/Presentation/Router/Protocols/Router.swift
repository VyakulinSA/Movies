//
//  Router.swift
//  Movies
//
//  Created by Вякулин Сергей on 28.01.2023.
//

import Foundation

protocol Router: AnyObject {
	func push(_ module: Presentable)
	func push(_ module: Presentable, animated: Bool)
}
