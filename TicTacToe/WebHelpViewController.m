//
//  WebHelpViewController.m
//  TicTacToe
//
//  Created by Richard Martin on 2016-01-17.
//  Copyright © 2016 Joseph Mouer. All rights reserved.
//

#import "WebHelpViewController.h"

@interface WebHelpViewController ()


@property (weak, nonatomic) IBOutlet UIWebView *webView;


@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;


@end

@implementation WebHelpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Tic Tac Toe: Help";
    
    NSURL *url = [NSURL URLWithString:@"https://en.wikipedia.org/wiki/Tic-tac-toe"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];


}


-(void)webViewDidStartLoad:(UIWebView *)webView {
    
    [self.activityIndicator startAnimating];
    
}

-(void)webViewDidFinishLoad:(UIWebView *)webView {
    
    [self.activityIndicator stopAnimating];
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
