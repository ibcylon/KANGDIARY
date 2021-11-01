//
//  DiaryTableViewCell.swift
//  KANGDIARY
//
//  Created by Kanghos on 2021/11/02.
//

import UIKit

class DiaryTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var contentTextView: UITextView!
    @IBOutlet weak var cellImageView: UIImageView!
    
    static let identifier:String = "DiaryTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
