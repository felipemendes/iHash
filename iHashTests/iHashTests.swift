//
//  iHashTests.swift
//  iHashTests
//
//  Created by Felipe Mendes on 14/03/19.
//  Copyright © 2019 Felipe Mendes. All rights reserved.
//

import XCTest
@testable import iHash

class iHashTests: XCTestCase {

    var ihash: iHash!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        ihash = iHash()
    }
    
    func testMD5() {
        let test: String = "testing"
        XCTAssertEqual(ihash.md5(test), "ae2b1fca515949e5d54fb22b8ed95575")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
