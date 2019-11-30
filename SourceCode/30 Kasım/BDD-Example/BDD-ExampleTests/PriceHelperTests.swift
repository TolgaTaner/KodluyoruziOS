//
//  PriceHelper.swift
//  BDD-ExampleTests
//
//  Created by Tolga Taner on 30.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import Quick
import Nimble

class PriceHelperTests: QuickSpec {

    override func spec(){
        var priceHelper :PriceHelper!
        let expectedList:[Double] = [1,2,3]
        let mockList:[Double] = [3.0,1.0,2.0]
        
        beforeEach {
            priceHelper = PriceHelper()
        }
        describe("A Price Helper"){
            context("when products fetch successfully"){
                it("sorts by low to high."){
                    let result = priceHelper.sort(mockList)
                    expect(result).to(equal(expectedList))
                }
            }
        }
    }

}
