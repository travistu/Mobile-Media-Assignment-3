//
//  DetailViewController.m
//  Restaurants
//
//

#import "DetailViewController.h"

@implementation DetailViewController
@synthesize currentRestaurant;
@synthesize addressLabel;
@synthesize navigationHeader;
@synthesize cuisineLabel;
@synthesize ageLabel;
@synthesize helpfulReviewPercentageLabel;
@synthesize helpfulReviewLabel;
@synthesize star1;
@synthesize star2;
@synthesize star3;
@synthesize star4;
@synthesize star5;

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    
    
    NSArray* reviews = [currentRestaurant reviews];
    for (Review* review in [currentRestaurant reviews]) {
        
    }
    
    if (review.score > 4)
    {
        NSLog(@"This is a great review");
    }
    else if (review.score > 2)
    {
        NSLog(@"This is a mediocre review");
    }
    else
    {
        NSLog(@"This is a terrible review");
    }
    
    
    
    helpfulReviewLabel.text = [[currentRestaurant mostHelpfulReview] text];
    
    helpfulReviewPercentageLabel.text = [NSString stringWithFormat:@" %i of %i found this review helpful ", [[currentRestaurant mostHelpfulReview]numberOfHelpfulReviews], [[currentRestaurant mostHelpfulReview]numberOfHelpfulReviews] + [[currentRestaurant mostHelpfulReview ]numberOfUnhelpfulReviews] ];
    
    
    addressLabel.text = [currentRestaurant address];
    navigationHeader.title = [currentRestaurant name];
    cuisineLabel.text = [currentRestaurant cuisineType];
    ageLabel.text = [NSString stringWithFormat:@"Est. %i (%i years ago)", currentRestaurant.yearOpened, [currentRestaurant age]];
    
    float averageScore = [currentRestaurant averageCustomerReview];
      if (averageScore >=0.5)
           star1.image = [UIImage imageNamed:@"Star_ON.png"];
      if (averageScore >=1.5)
           star2.image = [UIImage imageNamed:@"Star_ON.png"];
      if (averageScore >=2.5)
           star3.image = [UIImage imageNamed:@"Star_ON.png"];
      if (averageScore >=3.5)
           star4.image = [UIImage imageNamed:@"Star_ON.png"];
      if (averageScore >=4.5)
           star5.image = [UIImage imageNamed:@"Star_ON.png"];
    
    
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id) sender
{
    ReviewViewController* reviewVC = (ReviewViewController*) [segue destinationViewController];
    reviewVC.restaurant = currentRestaurant;
}




- (void)viewDidUnload
{
    [self setAddressLabel:nil];
    [self setNavigationHeader:nil];
    [self setCuisineLabel:nil];
    [self setAgeLabel:nil];
    [self setHelpfulReviewPercentageLabel:nil];
    [self setHelpfulReviewLabel:nil];
    [self setStar1:nil];
    [self setStar2:nil];
    [self setStar3:nil];
    [self setStar4:nil];
    [self setStar5:nil];
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


@end
