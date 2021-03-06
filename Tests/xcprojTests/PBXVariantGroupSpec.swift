import Foundation
import XCTest
import xcproj

final class PBXVariantGroupSpec: XCTestCase {

    var subject: PBXVariantGroup!

    override func setUp() {
        super.setUp()
        self.subject = PBXVariantGroup(children: ["child"],
                                       name: "name",
                                       sourceTree: .group)
    }

    func test_init_initializesTheModelWithTheCorrectAttributes() {
        XCTAssertEqual(subject.children, ["child"])
        XCTAssertEqual(subject.name, "name")
        XCTAssertEqual(subject.sourceTree, .group)
    }

    func test_itHasTheCorrectIsa() {
        XCTAssertEqual(PBXVariantGroup.isa, "PBXVariantGroup")
    }

    func test_equals_returnsTheCorrectValue() {
        let one = PBXVariantGroup(children: ["a"], name: "name", sourceTree: .group)
        let another = PBXVariantGroup(children: ["a"], name: "name", sourceTree: .group)
        XCTAssertEqual(one, another)
    }

    private func testDictionary() -> [String: Any] {
        return [
            "children": ["child1", "child2"],
            "name": "name",
            "sourceTree": "SDKROOT",
            "reference": "reference"
        ]
    }

}
