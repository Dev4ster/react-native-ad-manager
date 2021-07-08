#import "RCTConvert+GADAdSize.h"

@implementation RCTConvert (GADAdSize)

+ (GADAdSize)GADAdSize:(id)json
{
    NSString *adSize = [self NSString:json];
    if ([adSize isEqualToString:@"banner"]) {
        return kGADAdSizeBanner;
    } else if ([adSize isEqualToString:@"fullBanner"]) {
        return kGADAdSizeFullBanner;
    } else if ([adSize isEqualToString:@"largeBanner"]) {
        return kGADAdSizeLargeBanner;
    } else if ([adSize isEqualToString:@"fluid"]) {
        return kGADAdSizeFluid;
    } else if ([adSize isEqualToString:@"skyscraper"]) {
        return kGADAdSizeSkyscraper;
    } else if ([adSize isEqualToString:@"leaderboard"]) {
        return kGADAdSizeLeaderboard;
    } else if ([adSize isEqualToString:@"mediumRectangle"]) {
        return kGADAdSizeMediumRectangle;
    } else if ([adSize isEqualToString:@"smartBannerPortrait"]) {
        return kGADAdSizeSmartBannerPortrait;
    } else if ([adSize isEqualToString:@"smartBannerLandscape"]) {
        return kGADAdSizeSmartBannerLandscape;
    } else if ([adSize isEqualToString:@"300x600"]) {
        return GADAdSizeFromCGSize(CGSizeMake(300, 600));
    } else if ([adSize isEqualToString:@"300x250"]) {
             return GADAdSizeFromCGSize(CGSizeMake(300, 250));
         }
    else {
        if(!adSize) {
            return kGADAdSizeBanner;
        }
        NSArray *arrayOfComponents = [adSize componentsSeparatedByString:@"x"];
        NSInteger width = [arrayOfComponents[0] integerValue];
        NSInteger height = [arrayOfComponents[1] integerValue];
        return GADAdSizeFromCGSize(CGSizeMake(width, height));
    }
}

@end
