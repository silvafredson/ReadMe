//
//  DetailViewController.swift
//  ReadMe
//
//  Created by Fredson Silva on 15/06/24.
//

import UIKit

class DetailViewController: UIViewController {
    let book: Book
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = book.title
        authorLabel.text = book.authot
        imageView.image = book.image
    }
    
    required init?(coder: NSCoder) { fatalError("This should never be called") }
    
    init?(coder: NSCoder, book: Book) {
        self.book = book
        super.init(coder: coder)
    }
}
