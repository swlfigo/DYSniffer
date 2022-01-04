// See http://iphonedevwiki.net/index.php/Logos

#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>

%hook TTNetworkManager

-(void)setServerCertificate:(id)originalArgument{
    %orig(originalArgument);
}


%end

%hook TTNetworkManagerChromium
- (NSArray*)ServerCertificate {
    
    
    id list = %orig;
//    NSMutableArray* temp = [NSMutableArray arrayWithArray:list];
    NSMutableArray* temp = [[NSMutableArray alloc]init];

    NSString *path = @"/Library/PreferenceLoader/Preference/testTweak/ReplaceYourCertNameHere!!";
    NSData *p12Data = [NSData dataWithContentsOfFile:path];

    if(p12Data){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello"message:[NSString stringWithFormat:@"path:%@",path] delegate:self cancelButtonTitle:@"OK"otherButtonTitles:nil];
        [alert show];

        [temp addObject:p12Data];
    }
    return [temp copy];
}
%end
