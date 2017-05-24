//
//  Coordinatorable.h
//  qtum wallet
//
//  Created by Vladimir Lebedevich on 21.02.17.
//  Copyright © 2017 Designsters. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Coordinatorable <NSObject>

@required
-(void)start;

@optional
-(instancetype)initWithViewController:(UIViewController*)viewController;
-(instancetype)initWithPageViewController:(UIPageViewController*)pageViewController;

@end
