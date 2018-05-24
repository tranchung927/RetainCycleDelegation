//
//  DetailViewController.swift
//  RetainCycleDelegation
//
//  Created by Chung on 5/24/18.
//  Copyright © 2018 Chung. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController, DetailTableViewCellDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    deinit {
        print("\(type(of: self)) dealloc")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DetailTableViewCell
        cell.indexPath = indexPath
        cell.delegate = self
        cell.nameLabel.text = "\(indexPath.row)"
        return cell
    }
    
    func didSelectedEditButton(at indexPath: IndexPath?) {
        guard let indexPathSelected = indexPath else {return}
        print("didSelectedEditButton at \(indexPathSelected.row)")
    }
}
