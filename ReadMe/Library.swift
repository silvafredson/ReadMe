//
//  Library.swift
//  ReadMe
//
//  Created by Fredson Silva on 15/06/24.
//

import UIKit

enum LibrarySymbol {
    case boomark
    case bookmarkFill
    case book
    case letterSquare(letter: Character?)
    
    var image: UIImage {
        let imageName: String
        switch self {
        case .book, .boomark:
            imageName = "\(self)"
        case .bookmarkFill:
            imageName = "bookmark.fill"
        case .letterSquare(let letter):
            guard let letter = letter?.lowercased(),
                  let image = UIImage(systemName: "\(letter).square") else {
                imageName = "square"
                break
            }
            return image

        }
        return UIImage(systemName: imageName)!
    }
}

enum Library {
    
    static let books: [Book] = [
        Book(title: "The Lord of the Rings", authot: "Tolkien"),
        Book(title: "Bla!", authot: "Tolkien"),
        Book(title: "Bla! Bla!", authot: "Tolkien"),
        Book(title: "Bla! Bla! Bla!", authot: "Tolkien")
    ]
}
