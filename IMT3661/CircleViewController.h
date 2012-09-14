//
//  CircleViewController.h
//  IMT3661
//
//  Created by Comtet on 9/12/12.
//  Copyright (c) 2012 Comtet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *pizzaSlice;

- (IBAction)handlePan:(UIPanGestureRecognizer *)sender;

@end
