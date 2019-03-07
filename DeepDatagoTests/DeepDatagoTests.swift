//
//  DeepDatagoTests.swift
//  DeepDatagoTests
//
//  Created by tnnd on 12/29/18.
//  Copyright © 2018 com.deepdatago. All rights reserved.
//

import XCTest
@testable import DeepDatago

class DeepDatagoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a system integration test case.  The request will be sent to the real dev server
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        // SecKeyGeneratePair doesn't work well on XCTest as a known bug (URL cannot be found)
        
        var testDeep = DeepDatagoManager.sharedInstance()
        let groupAddress = "abc" as NSString
        // let groupKeyFlag = testDeep.getGroupKeyFromServer(groupAddress: groupAddress)
        let groupKey = testDeep.getGroupKey(group: groupAddress)
        let groupKey2 = testDeep.getGroupKey(group: groupAddress)
        var a = 3
        a = 4
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
