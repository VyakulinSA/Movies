//
//  MovieListCollectionView.swift
//  Movies
//
//  Created by Вякулин Сергей on 01.02.2023.
//

import Foundation
import UIKit

final class MoviesListCollectionView: UICollectionView {
	
	var viewModel: MoviesListViewModel!
	
	private let layout = with(UICollectionViewFlowLayout()) {
		$0.scrollDirection = .vertical
	}
	
	init(){
		super.init(frame: .zero, collectionViewLayout: layout)
		setupView()
		setupAppearance()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func reload(){
		reloadData()
	}
	
	
	private func setupView() {
		dataSource = self
		delegate = self
		register(MoviesListItemCell.self, forCellWithReuseIdentifier: MoviesListItemCell.reuseIdentifier)
	}
	
	private func setupAppearance() {
		backgroundColor = .blue
	}
}

extension MoviesListCollectionView: UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(for: indexPath) as MoviesListItemCell
		cell.backgroundColor = .red
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return viewModel.items.value.count
	}
	
}

extension MoviesListCollectionView: UICollectionViewDelegate {
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		viewModel.didSelectItem(at: indexPath.item)
	}
}

extension MoviesListCollectionView: UICollectionViewDelegateFlowLayout{
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: 100, height: 100)
	}
	
//	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//		return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
//	}
	
//	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//		20
//	}
	
//	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//		40
//	}
	
}
