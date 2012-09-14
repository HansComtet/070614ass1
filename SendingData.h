//
//  SendingData.h
//  IMT3661
//
//  Created by Comtet on 9/13/12.
//  Copyright (c) 2012 Comtet. All rights reserved.
//

#import "ViewController.h"

@interface SendingData : ViewController {
    

    UIWebView *webview;
   
    IBOutlet UITextField *field;
    IBOutlet UILabel *label;
   
}

-(IBAction)savedata:(id)sender;
-(IBAction)loaddata:(id)sender;
//-(IBAction)senddata:(id)sender;

@property (nonatomic, retain) IBOutlet UIWebView *webView;

@end
