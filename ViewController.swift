//
//  ViewController.swift
//  Homework-TableView
//
//  Created by user on 2023/09/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableNib()
        
    }
    
    private func tableNib() {
        tableView.register(UINib(nibName: String(describing: TableViewCell.self), bundle: nil),
                           forCellReuseIdentifier: String(describing: TableViewCell.self))
      
        tableView.delegate = self
        tableView.dataSource = self
    }
}
    extension ViewController: UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 15
            
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TableViewCell.self), for: indexPath) as! TableViewCell
            
            return cell
        }

}

