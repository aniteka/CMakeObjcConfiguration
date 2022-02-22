#import "defines.h"

@interface Person : NSObject
{
	@public		// Стоїть по дефолту 
	NSNumber* address;

	@protected
	NSString* name_surname;
	NSUInteger age;
}

-(Person*)init;

-(Person*)initWithNameAndSurname 
	:(NSString*)_name_surname 
	Age:(NSUInteger)_age
	Address:(NSNumber*)_address;

-(void)info;


@end
