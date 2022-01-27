//
//  MyClassTest.swift
//  UnitTest-introTests
//
//  Created by David Svensson on 2022-01-27.
//

import Foundation
import XCTest
@testable import UnitTest_intro

class MyClassTest : XCTestCase {
    
    
    func testAdd() {
        //given
        let c = MyClass()
        
        //when
        let result = c.add(a: 1, b: 3)
           
    
        //then
        XCTAssertEqual(result, 4, "Additon i swrong")
    }

}
