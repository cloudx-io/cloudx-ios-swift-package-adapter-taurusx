import CloudXTaurusXAdapter
import CloudXTaurusXAdapterPackage
import XCTest

final class CloudXTaurusXAdapterSwiftTests: XCTestCase {
    func testFrameworkIsLinked() {
        XCTAssertEqual(CLXTaurusXAdapterVersion, "1.18.2.1")
        XCTAssertNotNil(NSClassFromString("CLXTaurusXInitializer"))
    }
}
