#include <Foundation/Foundation.h>



@interface SampleClass : NSObject 
-(void)Metod;				// Не статичний метод, без параметрів
+(void)StaticMetod;			// Статичний метод, без параметрів
-(unsigned)ParamMetod		// Не статичний метод, з параметрами
	:(int)x
	:(int)y andUnusedZ		// Для удобстава
	:(int)z;

@end

@implementation SampleClass 
-(void)Metod
{
	NSLog(@"Metod output");
}
+(void)StaticMetod
{
	NSLog(@"Static metod output");
}
-(unsigned)ParamMetod
	:(int)x
	:(int)y andUnusedZ		
	:(int)z;
{
	return (unsigned)(x + y);
}
@end 



int main (int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   


	SampleClass* sc = [[SampleClass alloc] init];	
	// Виклик метода
	[sc Metod];
	// Виклик статичного метода
	[SampleClass StaticMetod];	
	// Виклик метода з пераметрами
	NSLog(@"10 + 11 = %u", [sc ParamMetod :10 :11 andUnusedZ:12 ]);	

	
	
	// Це цілик клас, який приймає числа любого виду
	NSNumber* int_val = [[NSNumber alloc] initWithInt: 10]; 
	NSNumber* double_val = [[NSNumber alloc] initWithDouble: 100.1];	// або [NSNumber numberWithDouble: 10] 
	if( [int_val isEqual: [NSNumber numberWithInt: 10] ] )
		NSLog(@"Yes");



	// Строки 
	NSString* str = @"Hello World";
	NSLog(@"Size: %u", [str length]);
	for(int i = 0; i < [str length]; ++i)
		printf("%c ", [str characterAtIndex: i]);
	puts("");




	[pool drain];
    return 0;
}
