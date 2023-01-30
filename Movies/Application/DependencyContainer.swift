//
//  DependencyContainer.swift
//  Movies
//
//  Created by Вякулин Сергей on 28.01.2023.
//

import Foundation
import UIKit

final class DependencyContainer{
	private var sceneArray: [UIWindowScene]
	
	var rootViewController = UINavigationController()
	
	private lazy var router = RouterImp(rootViewController: rootViewController)
	private lazy var windowsFactory = WindowsFactoryImp(rootViewController: rootViewController,scene: sceneArray)
	private lazy var screensFactory = ScreensFactoryImp()
	private lazy var coordinatorsFactory = CoordinatorsFactoryImp(router: router,modulesFactory: screensFactory)
	
	public lazy var applicationCoordinator = coordinatorsFactory.makeApplicationCoordinator(windowsFactory: windowsFactory)
	
	init(sceneArray: [UIWindowScene]) {
		self.sceneArray = sceneArray
	}
}
