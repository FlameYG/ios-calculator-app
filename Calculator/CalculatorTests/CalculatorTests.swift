//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by dragon on 2022/09/21.
//

import XCTest
@testable import Calculator

final class CalculatorTests: XCTestCase {
    
    var sut: CalculatorItemQueue<Any>!
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = CalculatorItemQueue()
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    func test_enqueue개수와_count개수가_동일한지_확인() {
        // Given
        sut.enqueue(element: 1)
        sut.enqueue(element: "+")
        sut.enqueue(element: 2)
        
        // When
        let count = sut.count
        
        // Then
        XCTAssertEqual(count, 3)
    }
    
    func test_queue에서_dequeue가_정상적으로_동작하는지_확인() {
        // Given
        sut.enqueue(element: 1)
        sut.enqueue(element: "+")
        sut.enqueue(element: 2)
        
        // When
        let result = sut.dequeue()
        let count = sut.count
        
        // Then
        XCTAssertEqual(result as! Int, 1)
        XCTAssertEqual(count, 2)
    }
    
    func test_queue에서_peek가_정상적으로_동작하는지_확인() {
        // Given
        sut.enqueue(element: 1)
        sut.enqueue(element: "+")
        sut.enqueue(element: 2)
        
        // When
        let result = sut.peek()
        let count = sut.count
        
        // Then
        XCTAssertEqual(result as! Int, 1)
        XCTAssertEqual(count, 3)
    }
    
    func test_queue에서_clear가_정상적으로_동작하는지_확인() {
        // Given
        sut.enqueue(element: 1)
        sut.enqueue(element: "+")
        sut.enqueue(element: 2)
        
        // When
        sut.clear()
        let count = sut.count
        
        // Then
        XCTAssertEqual(count, 0)
    }
}
