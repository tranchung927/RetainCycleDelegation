//
//  DetailTableViewCell.swift
//  RetainCycleDelegation
//
//  Created by Chung on 5/24/18.
//  Copyright © 2018 Chung. All rights reserved.
//

import UIKit

protocol DetailTableViewCellDelegate {
    func didSelectedEditButton(at indexPath: IndexPath?)
}

class DetailTableViewCell: UITableViewCell {

    var delegate: DetailTableViewCellDelegate?
    @IBOutlet weak var nameLabel: UILabel!
    var indexPath: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func editAction(_ sender: UIButton) {
        delegate?.didSelectedEditButton(at: indexPath)
    }

}
