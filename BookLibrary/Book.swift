//
//  Book.swift
//  BookLibrary
//
//  Created by Thibault Klein on 7/7/19.
//  Copyright © 2019 Thibault Klein. All rights reserved.
//

import Foundation
import SwiftUI

struct Book {
    let id: Int
    // Must be variables in order to be editable
    var name: String
    var author: String
}

extension Book: Identifiable {}
