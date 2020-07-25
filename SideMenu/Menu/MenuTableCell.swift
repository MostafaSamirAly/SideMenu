//
//  MenuTableCell.swift
//  SideMenu
//
//  Created by Mostafa Samir on 7/25/20.
//  Copyright © 2020 Mostafa Samir. All rights reserved.
//

import UIKit

class MenuTableCell: UITableViewCell {

    @IBOutlet private weak var titleLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(title:String){
        self.titleLbl.text = title
    }
    
}
