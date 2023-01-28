//
//  RootCoordinator.swift
//  Movies
//
//  Created by Вякулин Сергей on 27.01.2023.
//

import UIKit

final class ApplicationCoordinator: BaseCoordinator {

	lazy private var window = windowsFactory.makeWindow(with: .firstScene)
	
	private let windowsFactory: WindowsFactory
	
	internal init(windowsFactory: WindowsFactory, router: Router, coordinatorsFactory: CoordinatorFactory) {
		super.init(router: router, coordinatorsFactory: coordinatorsFactory)
		self.windowsFactory = windowsFactory
	}
	
	override func start() {
		window.makeKeyAndVisible()
	}
	
	//TODO: из фабрики модулей переделать в фабрику которая создает фабрики экранов(контроллеров), чтобы в координаторе доставать фабрику экрана(контроллера) и оттуда вызыывать нужнй нам контроллер( сделано для того, чтобы легко было изменить контроллер, который должен быть показан)
}
