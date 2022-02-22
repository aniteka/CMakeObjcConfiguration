#import "defines.h"
#import "Person.h"


@interface Worker : Person
{
	@private
	NSString* work_plase; 
}

-(Worker*)init;
-(Worker*)	initWithNameAndSurname:(NSString*)_name_surname 
			Age					:(NSUInteger)_age
			Address				:(NSNumber*)_address 
			WorkPlase			:(NSString*)_work;

-(void)info;
@end
