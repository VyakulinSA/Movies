//
//  WindowsFactoryImp.swift
//  Movies
//
//  Created by Вякулин Сергей on 29.01.2023.
//

import Foundation
import UIKit

final class WindowsFactoryImp: WindowsFactory{
	private let rootViewController: UIViewController
	private let sceneArray: [UIWindowScene]
	
	init(rootViewController: UIViewController, scene: [UIWindowScene]) {
		self.rootViewController = rootViewController
		self.sceneArray = scene
	}
	
	func makeWindow(with sceneNumber: SceneNumber) -> UIWindow {
		let window = UIWindow(windowScene: sceneArray[sceneNumber.rawValue])
		window.rootViewController = rootViewController
		return window
	}
}
