//
//  UICollectionViewCell+Extensions.swift
//  Movies
//
//  Created by Вякулин Сергей on 01.02.2023.
//

import Foundation
import UIKit

protocol ReusableCell: AnyObject {
	static var reuseIdentifier: String { get }
}

extension ReusableCell {
	static var reuseIdentifier: String {
		return String(describing: self)
	}
}

extension UICollectionViewCell: ReusableCell {}
