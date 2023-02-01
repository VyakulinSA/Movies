//
//  Observable.swift
//  Movies
//
//  Created by Вякулин Сергей on 01.02.2023.
//

import Foundation

final class Observable<Value> {
	
	struct Observer<Value> {
		weak var observer: AnyObject?
		let block: (Value) -> Void
	}
	
	private var observers = [Observer<Value>]()
	
	var value: Value {
		didSet{
			notifyObservers()
		}
	}
	
	init(_ value: Value){
		self.value = value
	}
	
	func observe(on observer: AnyObject, observerBlock: @escaping (Value) -> Void) {
		observers.append(Observer(observer: observer, block: observerBlock))
//		observerBlock(self.value) //TODO: зачем здесь сбегающее замыкание, проверить закоментив
	}
	
	func remove(observer: AnyObject) {
		observers = observers.filter { $0.observer !== observer }
	}
	
	private func notifyObservers() {
		for observer in observers {
			DispatchQueue.main.async {
				observer.block(self.value)
			}
		}
	}
}
