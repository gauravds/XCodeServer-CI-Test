//
//  FramworkCITestTests.swift
//  FramworkCITestTests
//
//  Created by Gaurav Sharma on 29/06/16.
//  Copyright © 2016 GDS. All rights reserved.
//

import XCTest
import Alamofire
@testable import FramworkCITest

class FramworkCITestTests: XCTestCase {

    func testExample() {
        let expectation = expectationWithDescription("Meta API Call")
        NetworkCall().testSomething({
            expectation.fulfill()
        })
        waitForExpectationsWithTimeout(10.0) {
            error in
            if let error = error {
                print ("Meta API Expectation Timout With Error: \(error)")
            }
        }
    }

}
