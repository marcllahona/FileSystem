//
//  MoveableSubitem.swift
//  FileSystem
//
//  Created by Spencer MacDonald on 23/10/2016.
//  Copyright © 2016 Square Bracket Software. All rights reserved.
//

import Foundation

public protocol MoveableSubitem: Moveable, Subitem {
    mutating func move(into parent: Parent) throws
}

extension MoveableSubitem {
    mutating public func move(into parent: Parent) throws {
        let movePath = parent.path.appendingComponent(path.lastComponent)
        try move(to: movePath)
    }
}
