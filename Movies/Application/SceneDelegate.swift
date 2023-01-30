//
//  SceneDelegate.swift
//  Movies
//
//  Created by Вякулин Сергей on 27.01.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
	
	private var dependencyContainer: DependencyContainer?

	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		
		guard let scene = (scene as? UIWindowScene) else { return }
		
		dependencyContainer = DependencyContainer(sceneArray: [scene])
		dependencyContainer?.applicationCoordinator.start()
	}

}

