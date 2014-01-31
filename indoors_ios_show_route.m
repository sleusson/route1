#import "indoors_ios_show_route.h"

#import <Indoors/IndoorsBuilder.h>
#import <Indoors/Indoors.h>
#import <IndoorsSurface/IndoorsSurfaceBuilder.h>
#import <IndoorsSurface/IndoorsSurfaceDelegates.h>

#import <Indoors/IndoorsLocationListener.h>
#import "Indoors/IDSBuilding.h"
#import "Indoors/IDSCoordinate.h"
#import <CoreLocation/CoreLocation.h>
#import <IndoorsSurface/IndoorsSurfaceDelegates.h>

@interface indoors_ios_show_route () <IndoorsSurfaceLocationDelegate, IndoorsSurfaceServiceDelegate>
@property (nonatomic, strong) IndoorsSurfaceBuilder* surfaceBuilder;
@end
//@class IDSCoordinate;
//@synthesize Indoors;


@implementation indoors_ios_show_route
@synthesize surfaceBuilder;
//@synthesize Indoors;
IDSCoordinate* start;
IDSCoordinate* end;
NSArray* path;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

    
    [[Indoors instance] routeFromLocation:start toLocation:end delegate:self];
    
    // ...
    
    [self.surfaceBuilder showPathWithPoints:path];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateUserOrientation:(float)orientation{
    
}

- (void)loadingBuildingFailed{
    
}

- (void)updateFloorLevel:(int)floorLevel name:(NSString*)name{
    
}

- (void)loadingBuilding:(NSNumber*)progress{
    
}

- (void)connected{
    
}

- (void)updateUserPosition:(IDSCoordinate*)userPosition{
    
}

- (void)onError:(IndoorsError*) indoorsError{
    
}

- (void)buildingLoaded:(IDSBuilding*)building{
    
}


@end
