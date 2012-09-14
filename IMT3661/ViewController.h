//
//  ViewController.h
//  IMT3661
//
//  Created by Comtet on 9/10/12.
//  Copyright (c) 2012 Comtet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface ViewController : UIViewController <ADBannerViewDelegate> {

    IBOutlet UIImageView *imageview;


    
    ADBannerView *aBanner;
}


@property (nonatomic, retain) IBOutlet ADBannerView *aBanner;
@property (nonatomic, assign) BOOL bannerIsVisible;




@end
