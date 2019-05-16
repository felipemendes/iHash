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
    
    func testMD5() {
        let test: String = "testing"
        XCTAssertEqual(ihash.md5(test), "ae2b1fca515949e5d54fb22b8ed95575")
    }
    
    func testSha1() {
        let test: String = "testing"
        XCTAssertEqual(test.sha1(), "dc724af18fbdd4e59189f5fe768a5f8311527050")
    }
}
