//
//  CompletedOrderCollectionViewCell.swift
//  OrderAppExample
//
//  Created by Tolga Taner on 23.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import UIKit.UICollectionViewCell

class CompletedOrderCollectionViewCell: UICollectionViewCell {
    
    var order:CompletedOrderModel? {
        didSet{
            if let item = order {
                noteLabel.text = item.note
                statusLabel.text = item.status.description
                dateLabel.text = item.date
            }
        }
    }
    
    class var prefferedSize:CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 100)
    }
    
    @IBOutlet final private weak var noteLabel: UILabel!
    @IBOutlet private weak var statusLabel: UILabel!
    @IBOutlet final private weak var dateLabel: UILabel!
    
    func populate(_ item:CompletedOrderModel){
        order = item
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        UILabel.removeAllText(noteLabel, statusLabel, dateLabel)
    }
}
