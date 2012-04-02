//
//  Review.m
//  Restaurants
//
//  Created by wei cheng tu on 3/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Review.h"

@implementation Review

@synthesize reviewer, text, score, numberOfHelpfulReviews, numberOfUnhelpfulReviews;


-(float)helpfulPercentage
{
    return (numberOfHelpfulReviews*100)/(numberOfHelpfulReviews+numberOfUnhelpfulReviews);
    
}


@end
