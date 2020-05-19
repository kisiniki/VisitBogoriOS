//
//  PlaceTableViewCell.swift
//  VisitBogor
//
//  Created by Ishaq Fikri Taufik on 17/05/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class PlaceTableViewCell: UITableViewCell {

    @IBOutlet weak var photoPlace: UIImageView!
    @IBOutlet weak var namePlace: UILabel!
    @IBOutlet weak var descPlace: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
