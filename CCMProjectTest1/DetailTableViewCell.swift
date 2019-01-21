//
//  DetailTableViewCell.swift
//  CCMProjectTest1
//
//  Created by Valentin Denis on 21/01/2019.
//  Copyright © 2019 Val. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    //Relier le label de la cellule à la cellule depuis le storyboard
    @IBOutlet weak var stringLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func fill(withString string:String) {
        stringLabel.text = string
    }
}
