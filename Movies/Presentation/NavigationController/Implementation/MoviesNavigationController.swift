//
//  MoviesNavigationController.swift
//  Movies
//
//  Created by Вякулин Сергей on 01.02.2023.
//

import Foundation
import UIKit

final class MoviesNavigationController: UINavigationController, NavigationController{

	init(){
		super.init(nibName: nil, bundle: nil)
		setupAppearance()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func setupAppearance(){
		navigationBar.isHidden = true
	}
}
