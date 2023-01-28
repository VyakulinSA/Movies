//
//  RouterImp.swift
//  Movies
//
//  Created by Вякулин Сергей on 29.01.2023.
//

import Foundation
import UIKit

final class RouterImp: Router{
	
	//TODO: Закрыть протоколом NavigationController чтобы убрать жесткое связывание
	private weak var rootViewController: UINavigationController?
	
	init(rootViewController: UINavigationController?) {
		self.rootViewController = rootViewController
	}
	
	
	func push(_ module: Presentable) {
		push(module, animated: true)
	}
	
	func push(_ module: Presentable, animated: Bool) {
		guard let controller = module.toPresent() else {return}
		rootViewController?.pushViewController(controller, animated: animated)
	}
}
