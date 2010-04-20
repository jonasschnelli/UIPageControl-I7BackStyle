//
//  UIPageControl+I7BackStyle.m
//  g7
//
//  Created by Jonas Schnelli on 20.04.10.
//  Copyright 2010 include7 AG. All rights reserved.
//

#import "UIPageControl+I7BackStyle.h"


@implementation UIPageControl (I7BackStyle)

- (void)drawRect:(CGRect)rect {
	int i;
	for(i=0;i<self.numberOfPages;i++) {
		
		UIImageView *pageIcon = [self.subviews objectAtIndex:i];
		
		/* check for class type, in case of upcomming OS changes */
		if([pageIcon isKindOfClass:[UIImageView class]]) {
			if(i==self.currentPage) {
				/* use the active image */
				pageIcon.image = [UIImage imageNamed: @"black_page_control_active.png"];
			}
			else {
				/* use the inactive image */
				pageIcon.image = [UIImage imageNamed: @"black_page_control.png"];
			}
		}
	}
}

/* you can alternatively add a methode swizzling, but i better not add the hackish code in case of a bad apple reviewer */
- (void)setCurrentPageBypass:(NSInteger)aPage {
	[self setCurrentPage:aPage];
	[self setNeedsDisplay];
}

- (NSInteger)currentPageBypass {
	return self.currentPage;
}


@end
