//
//  ViewController.m
//  IMT3661
//
//  Created by Comtet on 9/10/12.
//  Copyright (c) 2012 Comtet. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

@synthesize aBanner, bannerIsVisible;




- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    imageview.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://hig.no/var/ezwebin_site/storage/images/medier/nyheter/helse_per_tastetrykk/helse_mobil/461959-1-nor-NO/helse_mobil.jpg"]]];
    
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}





    // Show banner if you can load add

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    if (!self.bannerIsVisible)
    {
        [UIView beginAnimations:@"animateAdBannerOn" context:NULL];
        
        // Assumes the banner view is just off the bottom of the screen.
        
        banner.frame = CGRectOffset(banner.frame, 0, -banner.frame.size.height);
        
        [UIView commitAnimations];
        
        self.bannerIsVisible = YES;
    }
    
}

    // Show banner if you can´t load add

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    if (self.bannerIsVisible)
    {
        [UIView beginAnimations:@"animateAdBannerOff" context:NULL];
        
        // Assumes the banner view is placed at the bottom of the screen.
        
        banner.frame = CGRectOffset(banner.frame, 0, banner.frame.size.height);
        
        [UIView commitAnimations];
        
        self.bannerIsVisible = NO;
    }
    
}




- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
