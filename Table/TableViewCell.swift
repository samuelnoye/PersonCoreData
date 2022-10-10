//
//  TableViewCell.swift
//  AngelCoreData
//
//  Created by Noye Samuel on 09/10/2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    // MARK: - Variables
    // MARK: - Constants
    static let identifier = "TableViewCell"
    // MARK: - IBOutlets
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    @IBOutlet weak var ageLbl: UILabel!
    
    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
