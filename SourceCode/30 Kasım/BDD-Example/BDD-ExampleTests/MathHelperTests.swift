//
//  MathHelperTests.swift
//  BDD-ExampleTests
//
//  Created by Tolga Taner on 30.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//


import Quick
import Nimble
@testable import BDD_Example

class MathHelperTests: QuickSpec {
    
    
    override func spec() {
        var mathHelper:MathHelper!
        let expectedValue:Int = 3
        beforeEach {
            mathHelper = MathHelper()
        }
        
        describe("a Math Helper"){
            context("When I am at home screen"){
                it("adds two values"){
                    let result = mathHelper.add(1,1)
                    expect(result).to(equal(expectedValue))
                    
                }
            }
        }
        
        describe("a Math Helper"){
            context("When I am at home screen"){
                it("adds two values"){
                    let result = mathHelper.add(1,1)
                    expect(result).to(equal(expectedValue))
                    
                }
            }
        }
        
    }
}
