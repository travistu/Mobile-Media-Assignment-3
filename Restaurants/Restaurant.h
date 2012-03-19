//
//  Restaurant.h
//  Restaurants
//

#import <Foundation/Foundation.h>

@interface Restaurant : NSObject
{
    NSString* address;
    NSString* name;
    NSString* cuisineType;
    NSString* reviewerName;
    NSString* text;
    NSArray* reviews;
    
    int yearOpened;
    
    
    
}
@property(readwrite, strong) NSString* address;
@property(readwrite, strong) NSString* name;
@property(readwrite, strong) NSString* cuisineType;
@property(readwrite, strong) NSString* reviewerName;
@property(readwrite, strong) NSString* text;
@property(readwrite, strong) NSArray* reviews;

@property(readwrite) int yearOpened;
@property(readwrite) int score;
@property(readwrite) int numberOfHelpfulRatings;
@property(readwrite) int numberOfUnhelpfulRatings;

-(int)age;

@end
