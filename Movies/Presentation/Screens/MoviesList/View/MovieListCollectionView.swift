//
//  MovieListCollectionView.swift
//  Movies
//
//  Created by Вякулин Сергей on 01.02.2023.
//

import Foundation
import UIKit

final class MovieListCollectionView: UICollectionView {
	
	var viewModel: MoviesListViewModel!
	
	init(){
		super.init(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
		dataSource = self
		delegate = self
		backgroundColor = .blue
		register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func reload(){
		reloadData()
	}
}

extension MovieListCollectionView: UICollectionViewDataSource, UICollectionViewDelegate{
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
		cell.backgroundColor = .red
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return viewModel.items.value.count
	}
	
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		viewModel.didSelectItem(at: indexPath.item)
	}
	
}

extension MovieListCollectionView: UICollectionViewDelegateFlowLayout{
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: 100, height: 100)
	}
}
