//
//  MainCell.swift
//  AssignmentChalkboard
//
//  Created by Angelos Staboulis on 30/1/22.
//

import UIKit

class MainCell: UITableViewCell {

    @IBOutlet var lblDate: UILabel!
    @IBOutlet var lblAge: UILabel!
    @IBOutlet var lblFirstName: UILabel!
    @IBOutlet var lblLastName: UILabel!
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var lblID: UILabel!
    @IBOutlet var mainView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
