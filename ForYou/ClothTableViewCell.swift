//
//  ClothTableViewCell.swift
//  ForYou
//
//  Created by CAUADC on 2018. 2. 2..
//  Copyright © 2018년 HM. All rights reserved.
//

import UIKit

class ClothTableViewCell: UITableViewCell {

    @IBOutlet weak var clothImage: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var discountPriceLabel: UILabel!
    @IBOutlet weak var discountRate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
