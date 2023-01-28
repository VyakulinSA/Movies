//
//  CoordinatorOutput.swift
//  Movies
//
//  Created by Вякулин Сергей on 28.01.2023.
//

import Foundation

protocol CoordinatorOutput: AnyObject{
	var finishFlov: (()->Void)? { get set }
}
