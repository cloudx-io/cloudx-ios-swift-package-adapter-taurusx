#import <CloudXTaurusXAdapter/CloudXTaurusXAdapter.h>

@interface CloudXTaurusXAdapterPackageLoader : NSObject
@end

@implementation CloudXTaurusXAdapterPackageLoader

+ (void)load {
    CloudXTaurusXAdapterRegister();
}

@end
