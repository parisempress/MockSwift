// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Foundation
import MockSwift
@testable import MockSwiftExample











// MARK: - Basics
extension Mock: Basics where WrappedType == Basics {
  public func doSomething() {
    mocked()
  }
  public func doSomething() -> Int {
    mocked()
  }
  public func doSomething() -> String? {
    mocked()
  }
  public func doSomething(arg: String) throws -> String {
    try mockedThrowable(arg)
  }
  public func doSomething(arg1: String, arg2: Int?) -> String {
    mocked(arg1, arg2)
  }
  public func doSomething(with arg: String) -> String {
    mocked(arg)
  }
  public func doSomething(with arg1: String, and arg2: Bool) -> String {
    mocked(arg1, arg2)
  }
}


extension MockGiven where WrappedType == Basics {
  public func doSomething() -> Mockable<Void> {
    mockable()
  }
  public func doSomething() -> Mockable<Int> {
    mockable()
  }
  public func doSomething() -> Mockable<String?> {
    mockable()
  }
  public func doSomething(arg: Predicate<String>) -> Mockable<String> {
    mockable(arg)
  }
  public func doSomething(arg: String) -> Mockable<String> {
    mockable(arg)
  }
  public func doSomething(arg1: Predicate<String>, arg2: Predicate<Int?>) -> Mockable<String> {
    mockable(arg1, arg2)
  }
  public func doSomething(arg1: String, arg2: Int?) -> Mockable<String> {
    mockable(arg1, arg2)
  }
  public func doSomething(with arg: Predicate<String>) -> Mockable<String> {
    mockable(arg)
  }
  public func doSomething(with arg: String) -> Mockable<String> {
    mockable(arg)
  }
  public func doSomething(with arg1: Predicate<String>, and arg2: Predicate<Bool>) -> Mockable<String> {
    mockable(arg1, arg2)
  }
  public func doSomething(with arg1: String, and arg2: Bool) -> Mockable<String> {
    mockable(arg1, arg2)
  }
}


extension MockThen where WrappedType == Basics {
  public func doSomething() -> Verifiable<Void> {
    verifiable()
  }
  public func doSomething() -> Verifiable<Int> {
    verifiable()
  }
  public func doSomething() -> Verifiable<String?> {
    verifiable()
  }
  public func doSomething(arg: Predicate<String>) -> Verifiable<String> {
    verifiable(arg)
  }
  public func doSomething(arg: String) -> Verifiable<String> {
    verifiable(arg)
  }
  public func doSomething(arg1: Predicate<String>, arg2: Predicate<Int?>) -> Verifiable<String> {
    verifiable(arg1, arg2)
  }
  public func doSomething(arg1: String, arg2: Int?) -> Verifiable<String> {
    verifiable(arg1, arg2)
  }
  public func doSomething(with arg: Predicate<String>) -> Verifiable<String> {
    verifiable(arg)
  }
  public func doSomething(with arg: String) -> Verifiable<String> {
    verifiable(arg)
  }
  public func doSomething(with arg1: Predicate<String>, and arg2: Predicate<Bool>) -> Verifiable<String> {
    verifiable(arg1, arg2)
  }
  public func doSomething(with arg1: String, and arg2: Bool) -> Verifiable<String> {
    verifiable(arg1, arg2)
  }
}

// MARK: - Generics
extension Mock: Generics where WrappedType == Generics {
  public func doSomething<T>() -> T {
    mocked()
  }
  public func doSomething<T: Sequence>(with arg: T) {
    mocked(arg)
  }
  public func doSomething<T>(arg: T) throws -> T {
    try mockedThrowable(arg)
  }
  public func doSomething<T: Sequence, U>(arg1: T, arg2: U?) -> U where T.Element == U {
    mocked(arg1, arg2)
  }
  public func doSomething<T: Equatable, U: Equatable>(with arg1: T, and arg2: U) -> Bool {
    mocked(arg1, arg2)
  }
}


extension MockGiven where WrappedType == Generics {
  public func doSomething<T>() -> Mockable<T> {
    mockable()
  }
  public func doSomething<T: Sequence>(with arg: Predicate<T>) -> Mockable<Void> where T.Element == Int {
    mockable(arg)
  }
  public func doSomething<T: Sequence>(with arg: T) -> Mockable<Void> where T.Element == Int {
    mockable(arg)
  }
  public func doSomething<T>(arg: Predicate<T>) -> Mockable<T> {
    mockable(arg)
  }
  public func doSomething<T>(arg: T) -> Mockable<T> {
    mockable(arg)
  }
  public func doSomething<T: Sequence, U>(arg1: Predicate<T>, arg2: Predicate<U?>) -> Mockable<U> where T.Element == U {
    mockable(arg1, arg2)
  }
  public func doSomething<T: Sequence, U>(arg1: T, arg2: U?) -> Mockable<U> where T.Element == U {
    mockable(arg1, arg2)
  }
  public func doSomething<T: Equatable, U: Equatable>(with arg1: Predicate<T>, and arg2: Predicate<U>) -> Mockable<Bool> {
    mockable(arg1, arg2)
  }
  public func doSomething<T: Equatable, U: Equatable>(with arg1: T, and arg2: U) -> Mockable<Bool> {
    mockable(arg1, arg2)
  }
}


extension MockThen where WrappedType == Generics {
  public func doSomething<T>() -> Verifiable<T> {
    verifiable()
  }
  public func doSomething<T: Sequence>(with arg: Predicate<T>) -> Verifiable<Void> where T.Element == Int {
    verifiable(arg)
  }
  public func doSomething<T: Sequence>(with arg: T) -> Verifiable<Void> where T.Element == Int {
    verifiable(arg)
  }
  public func doSomething<T>(arg: Predicate<T>) -> Verifiable<T> {
    verifiable(arg)
  }
  public func doSomething<T>(arg: T) -> Verifiable<T> {
    verifiable(arg)
  }
  public func doSomething<T: Sequence, U>(arg1: Predicate<T>, arg2: Predicate<U?>) -> Verifiable<U> where T.Element == U {
    verifiable(arg1, arg2)
  }
  public func doSomething<T: Sequence, U>(arg1: T, arg2: U?) -> Verifiable<U> where T.Element == U {
    verifiable(arg1, arg2)
  }
  public func doSomething<T: Equatable, U: Equatable>(with arg1: Predicate<T>, and arg2: Predicate<U>) -> Verifiable<Bool> {
    verifiable(arg1, arg2)
  }
  public func doSomething<T: Equatable, U: Equatable>(with arg1: T, and arg2: U) -> Verifiable<Bool> {
    verifiable(arg1, arg2)
  }
}

