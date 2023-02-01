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
	
	private let movieListCollectionView = MovieListCollectionView()
	
	func setViewModel(_ viewModel: MoviesListViewModel) {
		self.viewModel = viewModel
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupViews()
		movieListCollectionView.viewModel = viewModel
		viewModel.viewDidLoad()
		bind(to: viewModel)
	}
	
	private func bind(to viewModel: MoviesListViewModel){
		viewModel.items.observe(on: self) { [weak self] _ in
			self?.updateItems()
		}
	}
	
	private func updateItems() {
		movieListCollectionView.reload()
	}
	
	private func setupViews() {
		view.backgroundColor = .yellow
		view.addSubview(movieListCollectionView)
		movieListCollectionView.snp.makeConstraints { make in
			make.top.bottom.left.right.equalToSuperview()
		}
	}


}



