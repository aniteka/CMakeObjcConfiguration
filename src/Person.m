#import "Person.h"

@implementation Person


-(Person*)init
{
	if(self = [super init])
	{
		self->address = [[NSNumber alloc] initWithInt:0];			
		self->age = 0;
		self->name_surname = @"";
	}
	return self;
}

-(Person*)initWithNameAndSurname 
	:(NSString*)_name_surname 
	Age:(NSUInteger)_age
	Address:(NSNumber*)_address
{
	if(self = [self init])
	{
		address = [_address copy];	
		name_surname = [_name_surname copy];	
		age = _age;
	}
	return self;
}

-(void)info
{
	NSLog(@"---------------------------");
	NSLog(@"Name, Surname: %@", name_surname);
	NSLog(@"Age: %li", age);
	NSLog(@"Address: %@", address);
	NSLog(@"---------------------------");
}

@end
