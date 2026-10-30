@import CloudXTaurusXAdapter;
@import CloudXTaurusXAdapterPackage;
@import XCTest;

@interface CloudXTaurusXAdapterObjCTests : XCTestCase
@end

@implementation CloudXTaurusXAdapterObjCTests

- (void)testFrameworkIsLinked {
    XCTAssertEqualObjects(CLXTaurusXAdapterVersion, @"1.18.2.1");
    XCTAssertNotNil(NSClassFromString(@"CLXTaurusXInitializer"));
}

@end
