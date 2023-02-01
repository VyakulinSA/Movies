//
//  ViewController.swift
//  Movies
//
//  Created by Вякулин Сергей on 27.01.2023.
//

import UIKit
import SnapKit

final class MoviesListViewController: UIViewController {
	
	private var viewModel: MoviesListViewModel!
	
	private let moviesListCollectionView = MoviesListCollectionView()

	func setViewModel(_ viewModel: MoviesListViewModel) {
		self.viewModel = viewModel
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		moviesListCollectionView.viewModel = viewModel
		setupViews()
		viewModel.viewDidLoad()
		bind(to: viewModel)
	}
	
	private func bind(to viewModel: MoviesListViewModel){
		viewModel.items.observe(on: self) { [weak self] _ in
			self?.updateItems()
		}
	}
	
	private func updateItems() {
		moviesListCollectionView.reload()
	}
	
	private func setupViews() {
		view.addSubview(moviesListCollectionView)
		moviesListCollectionView.snp.makeConstraints { make in
			make.top.bottom.left.right.equalToSuperview()
		}
	}


}



