//
//  Restaurant.m
//  Restaurants
//

#import "Restaurant.h"


@implementation Restaurant
@synthesize address, name, cuisineType, reviewerName, text, yearOpened, score, numberOfHelpfulRatings, numberOfUnhelpfulRatings;


-(int)age
{
    return 2012 - yearOpened;
    
}

@end
