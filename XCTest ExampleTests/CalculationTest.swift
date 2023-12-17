//
//  CalculationTest.swift
//  XCTest ExampleTests
//
//  Created by Rustam Manafov on 17.12.23.
//

import XCTest
@testable import XCTest_Example

final class CalculationTest: XCTestCase {

    func testSuccessfulTipCalculation() {
        
        // Given
        let enteredAmount = 100.00
        let tipSlider = 25.00
        let calculation = Calculation()

        // When
        let tip = calculation.calculateTip(of: enteredAmount, with: tipSlider)
        
        // Then
        XCTAssertEqual(tip, 25)
        
    }
    
    func testNegativeEnteredAmountTipCalculation() {
        
        // Given
        let enteredAmount = -100.00
        let tipSlider = 25.00
        let calculation = Calculation()

        // When
        let tip = calculation.calculateTip(of: enteredAmount, with: tipSlider)
        
        // Then
        XCTAssertNil(tip)
        
    }
   

}
