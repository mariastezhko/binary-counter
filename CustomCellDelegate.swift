//
//  BinaryCountProtocol.swift
//  BinaryCounter
//
//  Created by Maria Stezhko on 3/19/18.
//  Copyright © 2018 Maria Stezhko. All rights reserved.
//

import Foundation

protocol CustomCellDelegate: class {
    func plusNumber(at indexPath: NSIndexPath?)
    func minusNumber(at indexPath: NSIndexPath?)
}
