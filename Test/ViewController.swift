//
//  ViewController.swift
//  Test
//
//  Created by Mansoor Ali on 06/01/2022.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		/*
		check {
			print("Swift")
		}

		additional {
			print("Turing")
		}
		XA(numberX: 4)

		printString()*/

		printYears()
	}

	func check(a: () -> ()) {
		func a() {
			print("Turing")
		}
		a()
	}

	func additional(y a:() -> ()) {
		func y() {
			print("Quiz")
		}
		y()
	}

	func XA(numberX: Int) {
		if numberX % 2 == 0 {
			defer { print("XA") }
			print("XB")
		}else {
			print("XC")
		}
		print("XD")
	}

	enum Skill: Int {
		case swiftUI, combine, arKit = 3
		static subscript(n: Int) -> Skill? {
			return Skill(rawValue: n)
		}
	}

	func printString() {
		let x: String?? = .some(nil)
		let outputX  = (x ?? "inner") ?? "outer"
		let y: String?? = nil
		let outputY = (y ?? "inner") ?? "outer"
		let string = "\(x) \(y) \(outputX) \(outputY)"
		print(string)
	}

	func printYears() {
		let years = [15,2,67,4,5]
		let sum = years.filter({ $0 < 10 }).map({ $0*2 }).reduce(5,+)
		print(sum)
	}
}

