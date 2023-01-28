//
//  WindowsFactory.swift
//  Movies
//
//  Created by Вякулин Сергей on 28.01.2023.
//

import Foundation
import UIKit

enum SceneNumber: Int {
	case firstScene
}

protocol WindowsFactory: AnyObject {
	func makeWindow(with sceneNumber: SceneNumber) -> UIWindow
}
