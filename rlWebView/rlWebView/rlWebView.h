//
//  rlWebView.h
//  rlWebView
//
//  Created by runLoopOvO on 2019/12/24.
//  Copyright © 2019 slw. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@protocol rlWebViewDelegate;
//
//Apple圣旨声明将于2020年4月停止对UIWebView的支持并拒绝使用UIwebView的项目上架AppStore，因此使用者可以酌情去掉UIWebView代码，本SDK根据版本号对WebView进行了区分，大于8.0则使用WKWebView;


@interface rlWebView : NSObject


@end
