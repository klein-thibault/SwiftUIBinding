//
//  BookView.swift
//  BookLibrary
//
//  Created by Thibault Klein on 7/7/19.
//  Copyright © 2019 Thibault Klein. All rights reserved.
//

import SwiftUI

struct BookView : View {
    @Binding var book: Book

    var body: some View {
        Form {
            Section(header: Text("Book Information")) {
                TextField("Name", text: $book.name)
                TextField("Author", text: $book.author)
            }
        }
        .navigationBarTitle(Text(book.name))
    }
}

#if DEBUG
struct BookView_Previews : PreviewProvider {
    // Must be static
    @State static var book = Book(id: 1, name: "Name", author: "Author")
    static var previews: some View {
        BookView(book: $book)
    }
}
#endif
