//
//  ViewController.swift
//  Movies
//
//  Created by Вякулин Сергей on 27.01.2023.
//

import UIKit

class MoviesListViewController: UIViewController {
	
	private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
	
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .red
		
		collectionView.backgroundColor = .blue
		view.addSubview(collectionView)
		
		collectionView.translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint.activate([
			collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
			collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
			collectionView.leftAnchor.constraint(equalTo: view.leftAnchor),
			collectionView.rightAnchor.constraint(equalTo: view.rightAnchor)
		])
	}


}

