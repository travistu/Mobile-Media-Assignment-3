//
//  MasterViewController.h
//  Restaurants
//
//

#import <UIKit/UIKit.h>
#import "Restaurant.h"

@interface MasterViewController : UITableViewController

@property(readwrite, strong) NSMutableArray* restaurants;

@end
