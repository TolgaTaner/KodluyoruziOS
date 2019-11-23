//
//  Responsable.swift
//  FlickrExample
//
//  Created by Tolga Taner on 16.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import Foundation


typealias CompletionBlock = (() -> Void)?
typealias ResponseBlock = ((ErrorModel) -> Void)?

enum ResponseState {
    case loaded
    case loading
    case failed
    case awaiting
}

protocol Responsable {

    var finishBlock: CompletionBlock {get set}
    var failBlock: ResponseBlock{get set}
    var state:ResponseState{get set}
    mutating func finish()
    mutating func success()
    mutating func failure(_ error:Error)
    mutating func failure()

}


extension Responsable where Self : Any {


    mutating func finish() {
        state = .awaiting
        finishBlock = nil
        failBlock = nil
        print("operation finished")
    }

    mutating func success() {
        if let theFinishBlock = self.finishBlock {
            theFinishBlock()
            print("operation succeed")
            finish()
        }
    }
    mutating func failure(_ error:Error) {
        if let theFailureBlock = self.failBlock {
            let newError = ErrorModel(error: error)
            theFailureBlock(newError)
            finish()
        }
    }
    
    mutating func failure() {
        if let theFailureBlock = self.failBlock {
            theFailureBlock(ErrorModel(statusCode: -1, description: ""))
            finish()
        }
    }

}
