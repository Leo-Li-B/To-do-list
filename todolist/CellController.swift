//
//  CellController.swift
//  todolist
//
//  Created by home on 3/3/19.
//  Copyright © 2019 home. All rights reserved.
//

import UIKit

class CellController: UITableViewCell {

    @IBOutlet weak var listViewItem: UILabel!
    @IBOutlet weak var listItemButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
