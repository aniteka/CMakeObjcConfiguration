#import "defines.h"
#import "Worker.h"

@implementation Worker 

-(Worker*)init
{
	if(self = [super init])
	{
		self->work_plase = @"";
	}
	return self;
}

-(Worker*)	initWithNameAndSurname:(NSString*)_name_surname 
			Age					:(NSUInteger)_age
			Address				:(NSNumber*)_address 
			WorkPlase			:(NSString*)_work
{
	if(
		self = [super 
		initWithNameAndSurname: [_name_surname copy]
						   Age:	_age
					   Address: [_address copy]	   
		]	
	)
	{
		work_plase = [_work copy];	
	}
	return self;
}

-(void)info
{
	NSLog(@"---------------------------");
	NSLog(@"Name, Surname: %@", name_surname);
	NSLog(@"Age: %li", age);
	NSLog(@"Address: %@", address);
	NSLog(@"Work plase: %@", work_plase);
	NSLog(@"---------------------------");
}


@end 
