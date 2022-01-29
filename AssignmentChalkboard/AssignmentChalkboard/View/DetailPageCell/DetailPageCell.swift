//
//  DetailPageCell.swift
//  AssignmentChalkboard
//
//  Created by Angelos Staboulis on 21/1/22.
//

import UIKit

class DetailPageCell: UITableViewCell {

    @IBOutlet var lblAge: UILabel!
    @IBOutlet var lblDate: UILabel!
    @IBOutlet var lblFirstName: UILabel!
    @IBOutlet var lblLastName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
