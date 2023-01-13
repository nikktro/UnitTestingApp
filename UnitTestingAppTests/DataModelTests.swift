//
//  DataModelTests.swift
//  DataModelTests
//
//  Created by Nikolay Trofimov on 13.01.2023.
//

import XCTest
@testable import UnitTestingApp

final class DataModelTests: XCTestCase {
    
    var sut: DataModel!

    override func setUp() {
        super.setUp()
        sut = DataModel()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testLowestVolumeShouldBeZero() {
        // given
        sut.setVolume(to: -1)
        
        // when
        let volume = sut.volume
        
        // then
        XCTAssert(volume == 0, "Lowest value should be equal zero")
    }
    
    func testHighestVolumeShouldBeHundred() {
        // given
        sut.setVolume(to: 101)
        
        // when
        let volume = sut.volume
        
        // then
        XCTAssert(volume == 100, "Highest value should be equal Hundred")
    }
    
    func testNumberOneMustBeGreaterThanNumberTwo() {
        //given
        let numberOne = 1
        let numberTwo = 0
        
        //when
        let isGreater = sut.greaterThanValue(x: numberOne, y: numberTwo)
        
        //then
        XCTAssert(isGreater)
    }
    
    func testNumberOneNotBeGreaterThanNumberTwo() {
        //given
        let numberOne = 0
        let numberTwo = 1
        
        //when
        let isGreater = sut.greaterThanValue(x: numberOne, y: numberTwo)
        
        //then
        XCTAssert(!isGreater)
    }

}
