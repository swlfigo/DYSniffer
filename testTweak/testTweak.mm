#line 1 "/Users/sylar/Desktop/testTweak/testTweak/testTweak.xm"


#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>

































#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class TTNetworkManagerChromium; @class TTNetworkManager; 
static void (*_logos_orig$_ungrouped$TTNetworkManager$setServerCertificate$)(_LOGOS_SELF_TYPE_NORMAL TTNetworkManager* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$TTNetworkManager$setServerCertificate$(_LOGOS_SELF_TYPE_NORMAL TTNetworkManager* _LOGOS_SELF_CONST, SEL, id); static NSArray* (*_logos_orig$_ungrouped$TTNetworkManagerChromium$ServerCertificate)(_LOGOS_SELF_TYPE_NORMAL TTNetworkManagerChromium* _LOGOS_SELF_CONST, SEL); static NSArray* _logos_method$_ungrouped$TTNetworkManagerChromium$ServerCertificate(_LOGOS_SELF_TYPE_NORMAL TTNetworkManagerChromium* _LOGOS_SELF_CONST, SEL); 

#line 40 "/Users/sylar/Desktop/testTweak/testTweak/testTweak.xm"
#define AwemeFile(path) @"/Library/PreferenceLoader/Preference/testTweak/" #path


static void _logos_method$_ungrouped$TTNetworkManager$setServerCertificate$(_LOGOS_SELF_TYPE_NORMAL TTNetworkManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id originalArgument){
    NSString *path = @"/Library/PreferenceLoader/Preference/testTweak/c.cer";
    NSData *p12Data = [NSData dataWithContentsOfFile:path];


    
    if(p12Data){
        NSMutableArray* temp = [NSMutableArray arrayWithArray:originalArgument];
        [temp addObject:p12Data];
        NSArray *finalArray = [NSArray arrayWithArray:temp];
        _logos_orig$_ungrouped$TTNetworkManager$setServerCertificate$(self, _cmd, finalArray);


    }else{
        _logos_orig$_ungrouped$TTNetworkManager$setServerCertificate$(self, _cmd, originalArgument);
    }
    HBLogDebug(@"-[<TTNetworkManager: %p> setServerCertificate:%@]", self, originalArgument);
    
    
}





static NSArray* _logos_method$_ungrouped$TTNetworkManagerChromium$ServerCertificate(_LOGOS_SELF_TYPE_NORMAL TTNetworkManagerChromium* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    
    id list = _logos_orig$_ungrouped$TTNetworkManagerChromium$ServerCertificate(self, _cmd);

    NSMutableArray* temp = [[NSMutableArray alloc]init];
    NSString *resourcePath = AwemeFile(charles-ssl-proxying-certificate.cer);
    NSString *path = @"/Library/PreferenceLoader/Preference/testTweak/c.cer";
    NSData *p12Data = [NSData dataWithContentsOfFile:path];



    
    if(p12Data){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello"message:[NSString stringWithFormat:@"path:%@",path] delegate:self cancelButtonTitle:@"OK"otherButtonTitles:nil];
        [alert show];

        [temp addObject:p12Data];
    }
    return [temp copy];
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$TTNetworkManager = objc_getClass("TTNetworkManager"); MSHookMessageEx(_logos_class$_ungrouped$TTNetworkManager, @selector(setServerCertificate:), (IMP)&_logos_method$_ungrouped$TTNetworkManager$setServerCertificate$, (IMP*)&_logos_orig$_ungrouped$TTNetworkManager$setServerCertificate$);Class _logos_class$_ungrouped$TTNetworkManagerChromium = objc_getClass("TTNetworkManagerChromium"); MSHookMessageEx(_logos_class$_ungrouped$TTNetworkManagerChromium, @selector(ServerCertificate), (IMP)&_logos_method$_ungrouped$TTNetworkManagerChromium$ServerCertificate, (IMP*)&_logos_orig$_ungrouped$TTNetworkManagerChromium$ServerCertificate);} }
#line 90 "/Users/sylar/Desktop/testTweak/testTweak/testTweak.xm"
