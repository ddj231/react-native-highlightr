#import <React/RCTBridgeModule.h>
#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(RNTCodeEditor, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(language, NSString)
RCT_EXPORT_VIEW_PROPERTY(theme, NSString)
RCT_EXPORT_VIEW_PROPERTY(value, NSString)
RCT_EXPORT_VIEW_PROPERTY(keyboardAppearance, NSString)
RCT_EXPORT_VIEW_PROPERTY(editable, BOOL)
RCT_EXPORT_VIEW_PROPERTY(forceKeyboardResign, BOOL)
RCT_EXPORT_VIEW_PROPERTY(onChangeText, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPress, RCTBubblingEventBlock)

/*
RCT_EXTERN_METHOD(multiply:(float)a withB:(float)b
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
*/



@end
