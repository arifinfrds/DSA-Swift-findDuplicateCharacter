//
//  ProgramTests.swift
//  FindDuplicateCharacterInStringTests
//
//  Created by Arifin Firdaus on 13/12/22.
//

import XCTest

struct Program {
    func findDuplicateCharacter(in string: String) -> [Character: Int] {
        return [:]
    }
}

final class ProgramTests: XCTestCase {

    func test_findDuplicateCharacter_deliversEmptyOnEmptyString() {
        let sut = Program()
        
        let result = sut.findDuplicateCharacter(in: "")
        
        XCTAssertEqual(result, [:])
    }
    
    func test_findDuplicateCharacter_deliverseEmptyOnNonDuplicatedString() {
        let sut = Program()
        
        let result = sut.findDuplicateCharacter(in: "abc")
        
        XCTAssertEqual(result, [:])
    }
}
