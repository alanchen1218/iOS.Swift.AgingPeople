//
//  ViewController.swift
//  AgingPeople
//
//  Created by Alan Chen on 5/7/18.
//  Copyright © 2018 Alphie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var names = ["Alan","Sophie", "Jacky", "Aaron", "Andy", "Winton", "Alex", "Jonathan", "Darren", "Lorenzo"]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self

    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            let cell  = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            cell.textLabel?.text = names[indexPath.row]
            cell.detailTextLabel?.text  = "\(arc4random_uniform(91) + 5)" + " years old"
            return cell
    }
}
