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
	
	private lazy var router: Router = RouterImp(rootViewController: rootViewController)
	private lazy var windowsFactory: WindowsFactory = WindowsFactoryImp(scene: sceneArray)
	private lazy var coordinatorsFactory: CoordinatorsFactory = 
	
	var applicationCoordinator = 
	
	init(sceneArray: [UIWindowScene]) {
		self.sceneArray = sceneArray
	}
	
	func startRootCoordinator(for window: UIWindow?){
		let coordinator = ApplicationCoordinator()
		coordinator.window = window
		coordinator.start()
	}
}
