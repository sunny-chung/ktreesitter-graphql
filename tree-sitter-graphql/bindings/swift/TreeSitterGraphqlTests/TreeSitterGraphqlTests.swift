import XCTest
import SwiftTreeSitter
import TreeSitterGraphql

final class TreeSitterGraphqlTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_graphql())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Graphql grammar")
    }
}
