//
//  rlWebView.m
//  rlWebView
//
//  Created by runLoopOvO on 2019/12/24.
//  Copyright © 2019 slw. All rights reserved.
//

#import "rlWebView.h"

@implementation rlWebView


/*
 决定是否响应网页的某个动作，例如加载，回退，前进，刷新等，在这个方法中，必须执行decisionHandler()代码块，并将是否允许这个活动执行在block中进行传入
 */
/*
 WKNavigationAction是网页动作的抽象化，其中封装了许多行为信息，后面会介绍
 WKNavigationActionPolicy为开发者回执，枚举如下：
 typedef NS_ENUM(NSInteger, WKNavigationActionPolicy) {
 //取消此次行为
 WKNavigationActionPolicyCancel,
 //允许此次行为
 WKNavigationActionPolicyAllow,
 } NS_ENUM_AVAILABLE(10_10, 8_0);
 */
-(void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler{
    decisionHandler(WKNavigationActionPolicyAllow);
}
//需要响应身份验证时调用 同样在block中需要传入用户身份凭证
-(void)webView:(WKWebView *)webView didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition, NSURLCredential * _Nullable))completionHandler{
    //用户身份信息
    NSURLCredential *newCred = [NSURLCredential credentialWithUser:@""
                                                          password:@""
                                                       persistence:NSURLCredentialPersistenceNone];
    // 为 challenge 的发送方提供 credential
    [[challenge sender] useCredential:newCred
           forAuthenticationChallenge:challenge];
    completionHandler(NSURLSessionAuthChallengeUseCredential,newCred);
}
//接收到数据后是否允许执行渲染
/*
 其中，WKNavigationResponse为请求回执信息
 WKNavigationResponsePokicy为开发者回执，枚举如下：
 typedef NS_ENUM(NSInteger, WKNavigationResponsePolicy) {
 //取消渲染
 WKNavigationResponsePolicyCancel,
 //允许渲染
 WKNavigationResponsePolicyAllow,
 } NS_ENUM_AVAILABLE(10_10, 8_0);
 */
-(void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{
    decisionHandler(WKNavigationResponsePolicyAllow);
}
//=====================下面这个协议方法用于监听流程=========================================
//页面加载启动时调用
-(void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{
    
}
//当主机接收到的服务重定向时调用
-(void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation{
    
}
//内容到达主机时调用
-(void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{
    
}
//主页加载完成时调用
-(void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    
}
//提交发生错误时调用
-(void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error{
    
}
//主页数据加载发生错误时调用
-(void)webView:(WKWebView *)webView didFailProvisionalNavigation:(null_unspecified WKNavigation *)navigation withError:(nonnull NSError *)error{
    
}
//进程被终止时调用
-(void)webViewWebContentProcessDidTerminate:(WKWebView *)webView{
    
}

@end
