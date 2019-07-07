//
//  LibraryView.swift
//  BookLibrary
//
//  Created by Thibault Klein on 7/7/19.
//  Copyright © 2019 Thibault Klein. All rights reserved.
//

import SwiftUI

struct LibraryView : View {
    @ObjectBinding var libraryViewModel: LibraryViewModel

    var body: some View {
        NavigationView {
            List {
                ForEach(0..<libraryViewModel.books.count) { index in
                    NavigationLink(destination: BookView(book: self.$libraryViewModel.books[index])) {
                        VStack(alignment: .leading) {
                            Text(self.libraryViewModel.books[index].name)
                            Text(self.libraryViewModel.books[index].author)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Library"))
        }
        .onAppear {
            self.libraryViewModel.load()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        LibraryView(libraryViewModel: LibraryViewModel())
    }
}
#endif
