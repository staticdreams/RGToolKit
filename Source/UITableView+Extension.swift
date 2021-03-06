//
//  UITableView+Extension.swift
//  RGToolKit
//
//  Created by Ritesh Gupta on 29/11/16.
//  Copyright © 2016 Ritesh Gupta. All rights reserved.
//

import Foundation
import UIKit

public extension UITableView {
	
	public func dequeueCell<T: UITableViewCell>(withIdentifier identifier: String, for indexPath: IndexPath) -> T {
		return dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! T
	}
	public var topVisibleSectionIndex: Int? {
		return indexPathsForVisibleRows.flatMap { $0.first.flatMap { $0.section } }
	}
}
