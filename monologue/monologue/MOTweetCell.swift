//
//  TweetCell.swift
//  monologue
//
//  Created by jedi on 4/19/18.
//  Copyright © 2018 group6. All rights reserved.
//

import UIKit

class MOTweetCell: UITableViewCell {

    @IBOutlet weak var TweetField: UITextField!
    @IBOutlet weak var CharacterCountLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
