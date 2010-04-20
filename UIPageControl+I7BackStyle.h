//
//  UIPageControl+I7BackStyle.h
//  g7
//
//  Created by Jonas Schnelli on 20.04.10.
//  Copyright 2010 include7 AG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIPageControl (I7BackStyle)

- (void)setCurrentPageBypass:(NSInteger)aPage;

@property NSInteger currentPageBypass;

@end
