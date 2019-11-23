//
//  OrderModel.swift
//  OrderAppExample
//
//  Created by Tolga Taner on 23.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import Foundation

enum OrderModel {
    case active(order:ActiveOrderModel)
    case completed(order:CompletedOrderModel)
    
    static func getOrderList()->[OrderModel]{
        var returningList : [OrderModel] = [OrderModel]()
        returningList.append(.active(order: ActiveOrderModel(note: "Zile basmayın lütfen, çocuk uyuyor.", date: "23.11.2019", status: .preparing, eta: 15)))
        returningList.append(.completed(order: CompletedOrderModel(note: "Güvenliğe bırakın.", date: "22.11.2019", status: .delivered)))
        
        return returningList
    }
}

enum OrderStatus:String {
    
    case delivered = "DELIVERED"
    case inDelivery = "INDELIVERY"
    case unknown
    case preparing = "PREPARING"
    case cancelled = "CANCELLED"
    
    var description:String{
        switch self {
        case .delivered:
            return "Teslim Edildi"
        case .inDelivery:
            return "Yolda"
        case .preparing:
            return "Hazırlanıyor"
        case .cancelled:
            return "İptal Edildi"
        case .unknown:
            return ""
        }
    }
    
}
//struct OrderModel {
//
//    let note:String
//    let date:String
//    let isActive:Bool
//    let status:OrderStatus = .unknown
//    var eta:Int?
//}

protocol Order {
    var note:String {get}
    var date:String {get}
    var status:OrderStatus {get set}
}

struct CompletedOrderModel:Order {
    let note:String
    let date:String
    var status:OrderStatus = .unknown
}

struct ActiveOrderModel:Order {
    let note:String
    let date:String
    var status:OrderStatus = .unknown
    var eta:Int
    
    init() {
        note = ""
        date = ""
        eta = -1
    }
    
    init(note:String, date:String, status:OrderStatus, eta:Int) {
        self.note = note
        self.date = date
        self.status = status
        self.eta = eta
    }
}


