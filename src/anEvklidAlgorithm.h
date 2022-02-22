#import "defines.h"

#define MAX_FROM(A,B) (((A) > (B)) ? (A) : (B) )
#define MIN_FROM(A,B) (((A) < (B)) ? (A) : (B) )

@interface Algorithms : NSObject 

// Алгоритм Евкліда
+(NSUInteger)minimalCubeForRect :(NSUInteger) height :(NSUInteger) width;


@end




@implementation Algorithms 

+(NSUInteger)minimalCubeForRect :(NSUInteger) height :(NSUInteger) width
{
	if( MAX_FROM(height, width) % MIN_FROM(height, width) == 0 )
		return height;
	
	return [ Algorithms minimalCubeForRect 
		: (MAX_FROM(height, width) % MIN_FROM(height, width))
		: (MIN_FROM(height, width))
	];
}

@end
