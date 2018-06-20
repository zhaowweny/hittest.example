//
//  ViewController.m
//  mouse_events.test
//
//  Created by Alexandr Shapkin on 6/20/18.
//  Copyright © 2018 self.edu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)onPushView:(id)sender {
	
	NSStoryboard *storyboard = [NSStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
	
	NSViewController *popoverVC = [storyboard instantiateControllerWithIdentifier:@"PopoverViewController"];
	
	if (nil != popoverVC)
	{
		popoverVC.view.frame = self.view.bounds;
		[self addChildViewController:popoverVC];
		[self.view addSubview:popoverVC.view];
	}
}

- (IBAction)onClickMe:(id)sender {
	NSLog(@"ClickMe button Accepts Mouse Down");
}

@end
