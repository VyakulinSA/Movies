//
//  With.swift
//  Movies
//
//  Created by Вякулин Сергей on 01.02.2023.
//

import Foundation

@inlinable
@discardableResult
public func with<T: AnyObject>(_ obj: T, _ closure: (T) -> Void) -> T {
	closure(obj)
	return obj
}
