//
//  LibraryViewController.swift
//  ReadMe
//
//  Created by Fredson Silva on 15/06/24.
//

import UIKit

class LibraryViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension LibraryViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Library.books.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
        let book = Library.books[indexPath.row]
        
        cell.textLabel?.text = book.title
        cell.imageView?.image = book.image
        return cell
    }
}
