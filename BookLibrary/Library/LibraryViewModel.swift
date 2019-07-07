//
//  LibraryViewModel.swift
//  BookLibrary
//
//  Created by Thibault Klein on 7/7/19.
//  Copyright © 2019 Thibault Klein. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

final class LibraryViewModel: BindableObject {
    var didChange = PassthroughSubject<Void, Never>()

    var books: [Book] = [] {
        didSet {
            didChange.send()
        }
    }

    func load() {
        books = [
            Book(id: 1,
                 name: "The Lord Of The Ring - The Fellowship Of The Ring",
                 author: "J.R.R Tolkien"),
            Book(id: 2,
                 name: "The Lord Of The Ring - The Two Towers",
                 author: "J.R.R Tolkien"),
            Book(id: 1,
                 name: "The Lord Of The Ring - The Return Of The King",
                 author: "J.R.R Tolkien")
        ]
    }

}
