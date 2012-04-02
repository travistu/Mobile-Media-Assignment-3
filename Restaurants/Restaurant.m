//
//  Restaurant.m
//  Restaurants
//

#import "Restaurant.h"


@implementation Restaurant
@synthesize address, name, cuisineType, reviewerName, text, reviews, yearOpened, score, numberOfHelpfulRatings, numberOfUnhelpfulRatings;

-(int)age
{
    return 2012 - yearOpened;
    
}

-(Review*)mostHelpfulReview
{
    Review* mostHelpful = nil; 
    for (Review* review in reviews)
    {
        if (review.numberOfHelpfulReviews > 5)
            { 
            if (review.helpfulPercentage > mostHelpful.helpfulPercentage)
                {
                    mostHelpful= review;
                } 
            }
    }
    
    return;
}



@end
