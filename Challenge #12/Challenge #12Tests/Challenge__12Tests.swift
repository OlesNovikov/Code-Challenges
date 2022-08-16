//
//  Challenge__12Tests.swift
//  Challenge #12Tests
//
//  Created by Oles Novikov on 16.08.22.
//

import XCTest
@testable import Challenge__12

class Challenge__12Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSecureStore() throws {
        XCTAssertTrue(secureStore(string: "hello", forKey: "42"))
    }

}
