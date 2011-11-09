//
//  UIView+ExploreViews.h
//  Views
//
//  Created by Brad Larson on 2/1/2010.
//
//  This category is based on code posted by Erica Sadun at
//  http://blogs.oreilly.com/iphone/2008/11/view-spelunking-part-1-explori.html

#import <UIKit/UIKit.h>

void doLog(int level, id formatstring,...);

@interface UIView (ExploreViews)

- (void)exploreViewAtLevel:(int)level;

@end
