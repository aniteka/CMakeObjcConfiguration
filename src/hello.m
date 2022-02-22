#import "defines.h"
#import "Person.h"
#import "Worker.h"
#import "anEvklidAlgorithm.h"

int main (int argc, const char * argv[])
{
@autoreleasepool
{

	// Це цілик клас, який приймає числа любого виду
	NSNumber* int_val = [[NSNumber alloc] initWithInt: 10]; 
	NSNumber* double_val = [[NSNumber alloc] initWithDouble: 100.1];	// або [NSNumber numberWithDouble: 10] 
	if( [int_val isEqual: [NSNumber numberWithInt: 10] ] )
		NSLog(@"Yes");

	// Строки 
	NSString* str = @"Hello World";
	NSLog(@"Size: %lu", [str length]);
	for(int i = 0; i < [str length]; ++i)
		printf("%c ", [str characterAtIndex: i]);
	puts("");



	auto person =	[[Person alloc]	initWithNameAndSurname: @"David Collman"
									Age: 10
									Address: [NSNumber numberWithInt: 10]
					];
	[person info];



	auto worker = [[ Worker alloc ] 
		initWithNameAndSurname: @"TEST_NAME TEST_SURNAME"
						   Age: 20
					   Address: [NSNumber numberWithInt: 14562]
					 WorkPlase: @"Ubisoft"	   
	];
	[worker info];



	// Використається метод веркура, а не персона
	Person* p = worker;
	[p info];


}return 0;
}
