//MockGivenTests.swift
/*
 MIT License

 Copyright (c) 2019 Jordhan Leoture

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

import Foundation
import XCTest
@testable import MockSwift

private protocol Custom {}

private class CustomImpl: Custom {}
extension Mock: Custom where WrappedType == Custom {}

class MockGivenTests: XCTestCase {
  @Mock private var customMock: Custom
  private let customImpl = CustomImpl()
  private let errorHandler = ErrorHandlerMock()

  func test_given_shouldPass() {
    let _: MockGiven<Custom> = given(customMock)
  }

  func test_givenCompletion_shouldPass() {
    given(customMock) { (_ : MockGiven<Custom>) in }
  }

  func test_given_shouldFailWithCast() {
    // Given
    let mockGiven: MockGiven<Custom> = given(customMock)
    errorHandler.handleReturn = mockGiven

    // When
    let result: MockGiven<Custom> = given(customImpl, errorHandler: errorHandler, file: "file", line: 42)

    // Then
    XCTAssertTrue(result === mockGiven)
    XCTAssertEqual(errorHandler.handleReceived[0], .cast(source: customImpl, target: Mock<Custom>.self))
  }
}
