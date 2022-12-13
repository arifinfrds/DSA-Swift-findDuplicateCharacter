//
//  ProgramTests.swift
//  FindDuplicateCharacterInStringTests
//
//  Created by Arifin Firdaus on 13/12/22.
//

import XCTest

struct Program {
    func findDuplicateCharacter(in string: String) -> [Character: Int] {
        
        if string.isEmpty {
            return [:]
        }
        
        var hashTable = [Character: Int]()
        
        for character in string {
            if let count = hashTable[character] {
                hashTable[character] = count + 1
            } else {
                hashTable[character] = 1
            }
        }
        
        return hashTable
            .filter { $1 > 1 }
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
    
    func test_findDuplicateCharacter_deliverseDuplicatedOnDuplicatedString() {
        let sut = Program()
        
        let result = sut.findDuplicateCharacter(in: "hello")
        
        XCTAssertEqual(result, ["l" : 2])
    }
}
