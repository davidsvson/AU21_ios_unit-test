//
//  File.swift
//  UnitTest-introTests
//
//  Created by David Svensson on 2022-01-27.
//

import Foundation
import XCTest
@testable import UnitTest_intro

class TwoStringsTest : XCTestCase {
    
    var twoStrings : TwoStrings!
    var emptyStrings : TwoStrings!
    var oneIsShorter : TwoStrings!
    
    override func setUp() {
        super.setUp()
        
        //given
        twoStrings = TwoStrings(one: "1234567", two: "1234")
        emptyStrings = TwoStrings(one: "", two: "")
        oneIsShorter = TwoStrings(one: "Per", two: "DaviD")
    }
    
    func testCanConcatonate() {
        
        //when
        let result1 = twoStrings.concatonate()
        let result2 = emptyStrings.concatonate()
        
        //then
//        XCTAssertEqual(result1, "DaviDPer")
//        XCTAssertEqual(result2, "")
    }
    
    func testCanSubtract() {
        //when
        let result1 = twoStrings.subtract()
        let result2 = emptyStrings.subtract()
        let result3 = oneIsShorter.subtract()
        
        //then
        XCTAssertEqual(result1, "567")
        XCTAssertEqual(result2, "")
        XCTAssertEqual(result3, "")
    }
    
    func testSpeedSubtraction() {
        self.measure {
            for _ in 1...100000 {
                _ = twoStrings.subtract()
            }
        }
        
    }
    
    
    func testSpeedSubtraction2() {
        self.measure {
            for _ in 1...100000 {
                _ = twoStrings.subtract2()
            }
        }
    }
}
