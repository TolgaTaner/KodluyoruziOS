//
//  ActiveOrderCollectionViewCell.swift
//  OrderAppExample
//
//  Created by Tolga Taner on 23.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import UIKit.UICollectionViewCell

final class ActiveOrderCollectionViewCell: UICollectionViewCell {
    
    
    var order:ActiveOrderModel? {
        didSet{
            if let item = order {
                noteLabel.text = item.note
                statusLabel.text = item.status.description
                dateLabel.text = item.date
                etaLabel.text = item.eta.stringValue
            }
        }
    }
    
    class var prefferedSize:CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 150)
    }
    
    @IBOutlet final private weak var noteLabel: UILabel!
    @IBOutlet private weak var statusLabel: UILabel!
    @IBOutlet final private weak var dateLabel: UILabel!
    @IBOutlet private weak var etaLabel: UILabel!
    
    func populate(_ item:ActiveOrderModel) {
        order = item
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        UILabel.removeAllText(noteLabel, statusLabel, dateLabel, etaLabel)
    }
    
    
}
