//
//  Book.swift
//  ReadMe
//
//  Created by Fredson Silva on 15/06/24.
//

import UIKit

struct Book {
    let title: String
    let authot: String
    var image: UIImage {
        LibrarySymbol.letterSquare(letter: title.first).image
    }
}
