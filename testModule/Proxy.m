/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2012 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "Proxy.h"
#import "TiUtils.h"


static int nextProxyId = 1;

@implementation TiSampleTestSampleProxy


-(id)init
{
	// This is the designated initializer method and will always be called
	// when the proxy is created.
	
	// Generate a unique identifier so the user can see which proxy
	// instance is being created or destroyed (for demonstration purposes only).
	proxyId = nextProxyId++;
	
	NSLog(@"[PROXY LIFECYCLE EVENT] init with proxy id of %d", proxyId);
	
	return [super init];
}

-(void)_destroy
{
	// This method is called from the dealloc method and is good place to
	// release any objects and memory that have been allocated for the proxy.
	
	NSLog(@"[PROXY LIFECYCLE EVENT] _destroy proxy with id %d", proxyId);
	
	[super _destroy];
}

-(void)dealloc
{
	// This method is called when the proxy is being deallocated. The superclass
	// method calls the _destroy method.
	
	NSLog(@"[PROXY LIFECYCLE EVENT] dealloc proxy with id %d", proxyId);
	
	[super dealloc];
}

-(id)_initWithPageContext:(id<TiEvaluator>)context
{
	// This method is one of the initializers for the proxy class. If the
	// proxy is created without arguments then this initializer will be called.
	// This method is also called from the other _initWithPageContext method.
	// The superclass method calls the init and _configure methods.
	
	NSLog(@"[PROXY LIFECYCLE EVENT] _initWithPageContext (no arguments)");
	
	return [super _initWithPageContext:context];
}

-(id)_initWithPageContext:(id<TiEvaluator>)context_ args:(NSArray*)args
{
	// This method is one of the initializers for the proxy class. If the
	// proxy is created with arguments then this initializer will be called.
	// The superclass method calls the _initWithPageContext method without
	// arguments.
    
	NSLog(@"[PROXY LIFECYCLE EVENT] _initWithPageContext %@", args);
	
	return [super _initWithPageContext:context_ args:args];
}

-(void)_configure
{
	// This method is called from _initWithPageContext to allow for
	// custom configuration of the module before startup. The superclass
	// method calls the startup method.
    
	NSLog(@"[PROXY LIFECYCLE EVENT] _configure");
	
	[super _configure];
}

-(void)_initWithProperties:(NSDictionary *)properties
{
	// This method is called from _initWithPageContext if arguments have been
	// used to create the proxy. It is called after the initializers have completed
	// and is a good point to process arguments that have been passed to the
	// proxy create method since most of the initialization has been completed
	// at this point.
    
	NSLog(@"[PROXY LIFECYCLE EVENT] _initWithProperties %@", properties);
	
	[super _initWithProperties:properties];
}

-(void)close:(id)args
{
    // Provide for API parity with Android 
}


// Creating Constants

MAKE_SYSTEM_STR(TEST_CONSTANT_STRING, @"sample constant");
MAKE_SYSTEM_UINT(TEST_CONSTANT_NUMBER, 50);

MAKE_SYSTEM_NUMBER(TEST_CONSTANT_INTEGER,NUMINT(50));
MAKE_SYSTEM_PROP(TEST_CONSTANT_BOOLEAN,YES);







// Our Impplemented Methods

-(NSString*)funcSaring:(id)args{
    
     NSLog(@"[INFO] ##################################### Method in Proxy called Name: -(NSString*)funcSaring:(id)args");
    
    return @"I am a Function in Sample Proxy class"; 
}

-(id)funcSaringWithReturnTypeId:(id)args{
    
     NSLog(@"[INFO] ##################################### Method in Proxy called Name: -(id)funcSaringWithReturnTypeId:(id)args");
    
    return @"I am a Function in Sample Proxy class"; 
}

-(NSNumber*)funcNumber:(id)args{
    
     NSLog(@"[INFO] ##################################### Method in Proxy called Name: -(NSNumber*)funcNumber:(id)args");
    
    return NUMINT(11); 
}

-(id)funcNumberWithReturnTypeId:(id)args{
    
     NSLog(@"[INFO] ##################################### Method in Proxy called Name: -(id)funcNumberWithReturnTypeId:(id)args");
    
    return NUMINT(11); 
}

-(id)funcNumberorStringWithReturnTypeId:(id)args{
    
     NSLog(@"[INFO] ##################################### Method in Proxy called Name: -(id)funcNumberorStringWithReturnTypeId:(id)args");
    
    if (args) {
        return NUMINT(11);
    }
    else {
        return @"I am a Function in Sample Proxy class";
    }
     
}

-(NSDictionary*)JSONReturn:(id)args{
    
     NSLog(@"[INFO] ##################################### Method in Proxy called Name: -(NSDictionary*)JSONReturn:(id)args");
    
    if (args) {
        return [args objectAtIndex:0];
    }
    else {
        [NSDictionary dictionaryWithObjectsAndKeys:@"i my value1",@"i am key1",@"i my value2",@"i am key2",@"i my value3",@"i am key3", nil];
    }
}

-(id)JSONReturnWithreturnTypeId:(id)args{
    
     NSLog(@"[INFO] ##################################### Method in Proxy called Name: -(id)JSONReturnWithreturnTypeId:(id)args");
    
    if (args) {
        return [args objectAtIndex:0];
    }
    else {
        [NSDictionary dictionaryWithObjectsAndKeys:@"i my value1",@"i am key1",@"i my value2",@"i am key2",@"i my value3",@"i am key3", nil];
    }
}

-(id)setTestProperty:(id)args
{
    NSLog(@"[INFO] ##################################### Method in Proxy called Name: -(id)setTestProperty:(id)args");
    [self replaceValue:args forKey:@"testProperty" notification:NO];
}

//-(id)getTestProperty:(id)args
//{
//     NSLog(@"[INFO] ##################################### Method in Proxy called Name: -(id)getTestProperty:(id)args");
//    return @"xxxxxxxxxxxxxxxxxxx";//[self valueForKey:@"testProperty"];
//}


//************* for proxy and ViewProxy both *******************************

// property format function -(id)testProperty

// work for both way of getting value

//1:-(id)testProperty
//2:-(id)getTestProperty:(id)args

// then we can return separate values as well if we use both.
// then if we return [self valueForKey:@"testProperty"] fron get prefix function then  it will be overridden by property format function
// if property format function is not written then we can return [self valueForKey:@"testProperty"] from get prefix function.

// never return [self valueForKey:@"testProperty"] this way from property format function eg. -(id)testProperty
// else will be a crash.


-(id)testProperty
{
     NSLog(@"[INFO] ##################################### Method in Proxy called Name: -(id)testProperty");
    return @"Ashish Nigam Proxy Special Test";
}

-(id)setSample:(id)args
{
     NSLog(@"[INFO] ##################################### Method in Proxy called Name: -(id)setSample:(id)args");
    [self replaceValue:args forKey:@"sample" notification:NO];
}




/*

#pragma Kroll Property Management

-(void)setWatchPropertyChanges:(id)value
{
	// This method is the 'setter' method for the 'watchPropertyChanges' proxy property.
	// It is called whenever the JavaScript code sets the value of the 'watchPropertyChanges'
	// property.
	//
	// By setting the modelDelegate property of the proxy, the 'propertyChanged' method
	// will be called whenever a proxy property is updated. This is an alternative technique
	// to implementing individual setter methods if you just need to know when a proxy 
	// property has been updated in the set of properties that the proxy maintains.
	
	BOOL enabled = [TiUtils boolValue:value];
	if (enabled) {
		self.modelDelegate = self;
	} else {
		self.modelDelegate = nil;
	}
	
	// If you implement a setter, you should also manually store the property yourself in
	// the dynprops for the proxy. This is done by calling the 'replaceValue' method.
	[self replaceValue:value forKey:@"watchPropertyChanges" notification:NO];
}

-(void)propertyChanged:(NSString*)key oldValue:(id)oldValue newValue:(id)newValue proxy:(TiProxy*)proxy
{
	// If the 'modelDelegate' property has been set for this proxy then this method is called
	// whenever a proxy property value is updated. Note that this method is called whenever the
	// setter is called, so it will get called even if the value of the property has not changed.
	
	if ([oldValue isEqual:newValue]) {
		// Value didn't really change
		return;
	}
	
	NSLog(@"[KROLLDEMO] Property %@ changed from %@ to %@", key, oldValue, newValue);
	
	// If is a good idea to check if there are listeners for the event that
	// is about to fired. There could be zero or multiple listeners for the
	// specified event.
	if ([self _hasListeners:@"propertyChange"]) {	
		NSDictionary *event = [NSDictionary dictionaryWithObjectsAndKeys:
							   key, @"property",
							   oldValue == nil ? [NSNull null] : oldValue, @"oldValue",
							   newValue == nil ? [NSNull null] : newValue, @"newValue",
							   nil
							   ];
		[self fireEvent:@"propertyChange" withObject:event];
	}
}

*/


// -(void)propertyChanged:(NSString*)key oldValue:(id)oldValue newValue:(id)newValue proxy:(TiProxy*)proxy;

// @optional

/**
 Tells the delegate to read proxy values.
 @param keys The enumeration of keys to read.
 */
//-(void)readProxyValuesWithKeys:(id<NSFastEnumeration>)keys;

/**
 Tells the delegate that a listener has been added to the proxy.
 @param type The listener type.
 @param count The current number of active listeners
 */
//-(void)listenerAdded:(NSString*)type count:(int)count;

/**
 Tells the delegate that a listener has been removed to the proxy.
 @param type The listener type.
 @param count The current number of active listeners after the remove
 */
//-(void)listenerRemoved:(NSString*)type count:(int)count;

/**
 Tells the delegate to detach from proxy.
 */
//-(void)detachProxy;



@end
