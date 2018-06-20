//
//  CustomView.m
//  mouse_events.test
//
//  Created by Alexandr Shapkin on 6/20/18.
//  Copyright © 2018 self.edu. All rights reserved.
//

#import "CustomView.h"

@interface CustomView ()

@property (weak) IBOutlet NSButton *eventsFallThroughCheckBox;
@property (weak) IBOutlet NSBox *box;

@end

@implementation CustomView

- (void)mouseDown:(NSEvent *)event {
	NSLog(@"CustomView received mouseDown");
}

- (NSView *)hitTest:(NSPoint)point {
	if (NSControlStateValueOff == self.eventsFallThroughCheckBox.state) {
		return [super hitTest:point];
	}
	
	NSView *viewToAcceptEvent = nil;
	
	if (NSPointInRect(point, self.box.frame)) {
		viewToAcceptEvent = self.box;
	} else if (NSPointInRect(point, self.eventsFallThroughCheckBox.frame)) {
		viewToAcceptEvent = self.eventsFallThroughCheckBox;
	}
	
	return viewToAcceptEvent;
}

@end
