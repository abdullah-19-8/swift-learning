//
//  ViewController.swift
//  UIKit-Project1-3
//
//  Created by Abdulla Ahmad on 1/1/24.
//

import UIKit

class ViewController: UITableViewController {
    
    var countries = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Challenge"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        countries += [
            "estonia", "france", "germany",
            "ireland", "italy", "monaco",
            "nigeria", "poland", "russia",
            "spain", "uk", "us"
        ]
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Countries", for: indexPath)
        cell.imageView?.image = UIImage(named: countries[indexPath.row])
        cell.textLabel?.text = countries[indexPath.row]
        self.tableView.contentInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0
        )
        cell.frame = cell.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
        cell.frame.origin.y = 4
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedImage = countries[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
