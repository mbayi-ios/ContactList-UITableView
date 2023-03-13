//
//  ViewController.swift
//  ContactList
//
//  Created by Amby on 13/03/2023.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var tableView: UITableView!

    let names = [
        "Amby Mbayi",
        "John Smith",
        "Kevin Kimani"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
}


extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
}

