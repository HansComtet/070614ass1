//
//  SendingData.m
//  IMT3661
//
//  Created by Comtet on 9/13/12.
//  Copyright (c) 2012 Comtet. All rights reserved.
//

#import "SendingData.h"

@interface SendingData ()

@end

@implementation SendingData
@synthesize webView;

//
-(IBAction)savedata:(id)sender {
    NSString *savestring = field.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:savestring forKey:@"savedstring"];
    [defaults synchronize];
   
}

-(IBAction)loaddata:(id)sender {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loadstring = [defaults objectForKey:@"savedstring"];
    [field setText:loadstring];
    [label setText:loadstring];
    
}

//-(IBAction)senddata:(id)sender {
// }
//


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"local_html-file" ofType:@"html"] isDirectory:NO]]];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}




@end
