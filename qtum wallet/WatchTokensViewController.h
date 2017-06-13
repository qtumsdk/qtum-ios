//
//  WatchTokensViewController.h
//  qtum wallet
//
//  Created by Никита Федоренко on 12.06.17.
//  Copyright © 2017 PixelPlex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContractCoordinator.h"

@interface WatchTokensViewController : UIViewController

@property (weak,nonatomic) id <ContractCoordinatorDelegate> delegate;

@end