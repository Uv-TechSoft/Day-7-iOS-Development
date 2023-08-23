//
//  ViewController.swift
//  TableView
//
//  Created by Yogesh Patel on 16/10/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "\(indexPath.row)"
        cell?.detailTextLabel?.text = "SubTitle - \(indexPath.row)"
        cell?.imageView?.image = UIImage(systemName: "play")
        return cell!
    }

}

