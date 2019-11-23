//
//  OrderListCollectionView.swift
//  OrderAppExample
//
//  Created by Tolga Taner on 23.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import UIKit.UICollectionView

protocol OrderListCollectionViewDelegate:class {
    func didSelected(_ order:ActiveOrderModel)
}

final class OrderListCollectionView: UICollectionView {
    
    lazy var list:[OrderModel] = []
    weak var actionDelegate:OrderListCollectionViewDelegate?
    
    override func awakeFromNib() {
        delegate = self
        dataSource = self
    }
    
}
extension OrderListCollectionView:UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedItem = list[indexPath.row]
        switch selectedItem {
        case .active(order: let order):
            actionDelegate?.didSelected(order)
        default:
            return
        }
    }
}

extension OrderListCollectionView:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = list[indexPath.row]
        switch item {
        case .active(order: let order):
            if let cell = dequeueReusableCell(withReuseIdentifier: ActiveOrderCollectionViewCell.identifier, for: indexPath) as? ActiveOrderCollectionViewCell {
                cell.populate(order)
                return cell
            }
        case .completed(order: let order):
            if let cell = dequeueReusableCell(withReuseIdentifier: CompletedOrderCollectionViewCell.identifier, for: indexPath) as? CompletedOrderCollectionViewCell {
                cell.populate(order)
                return cell
            }
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
}

extension OrderListCollectionView:UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let item = list[indexPath.row]
        switch item {
        case .active(_):
            return ActiveOrderCollectionViewCell.prefferedSize
        case .completed(_):
            return CompletedOrderCollectionViewCell.prefferedSize
        }
    }
}
