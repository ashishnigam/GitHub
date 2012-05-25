/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2012 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiSampleTestSampleViewProxy.h"
#import "TiUtils.h"

@implementation TiSampleTestSampleViewProxy


-(id)init
{
	// This is the designated initializer method and will always be called
	// when the view proxy is created.
	
	NSLog(@"[VIEWPROXY LIFECYCLE EVENT] init");
	
	return [super init];
}

-(void)_destroy
{
	// This method is called from the dealloc method and is good place to
	// release any objects and memory that have been allocated for the view proxy.
	
	NSLog(@"[VIEWPROXY LIFECYCLE EVENT] _destroy");
	
	[super _destroy];
}

-(void)dealloc
{
	// This method is called when the view proxy is being deallocated. The superclass
	// method calls the _destroy method.
	
	NSLog(@"[VIEWPROXY LIFECYCLE EVENT] dealloc");
	
	[super dealloc];
}

-(id)_initWithPageContext:(id<TiEvaluator>)context
{
	// This method is one of the initializers for the view proxy class. If the
	// proxy is created without arguments then this initializer will be called.
	// This method is also called from the other _initWithPageContext method.
	// The superclass method calls the init and _configure methods.
	
	NSLog(@"[VIEWPROXY LIFECYCLE EVENT] _initWithPageContext (no arguments)");
	
	return [super _initWithPageContext:context];
}

-(id)_initWithPageContext:(id<TiEvaluator>)context_ args:(NSArray*)args
{
	// This method is one of the initializers for the view proxy class. If the
	// proxy is created with arguments then this initializer will be called.
	// The superclass method calls the _initWithPageContext method without
	// arguments.
	
	NSLog(@"[VIEWPROXY LIFECYCLE EVENT] _initWithPageContext %@", args);
	
	return [super _initWithPageContext:context_ args:args];
}

-(void)_configure
{
	// This method is called from _initWithPageContext to allow for
	// custom configuration of the module before startup. The superclass
	// method calls the startup method.
	
	NSLog(@"[VIEWPROXY LIFECYCLE EVENT] _configure");
	
	[super _configure];
}

-(void)_initWithProperties:(NSDictionary *)properties
{
	// This method is called from _initWithPageContext if arguments have been
	// used to create the view proxy. It is called after the initializers have completed
	// and is a good point to process arguments that have been passed to the
	// view proxy create method since most of the initialization has been completed
	// at this point.
	
	NSLog(@"[VIEWPROXY LIFECYCLE EVENT] _initWithProperties %@", properties);
	
	[super _initWithProperties:properties];
}

-(void)viewWillAttach
{
	// This method is called right before the view is attached to the proxy
	
	NSLog(@"[VIEWPROXY LIFECYCLE EVENT] viewWillAttach");
}

-(void)viewDidAttach
{
	// This method is called right after the view has attached to the proxy
    
	NSLog(@"[VIEWPROXY LIFECYCLE EVENT] viewDidAttach");
}

-(void)viewDidDetach
{
	// This method is called right before the view is detached from the proxy
	
	NSLog(@"[VIEWPROXY LIFECYCLE EVENT] viewDidDetach");
}

-(void)viewWillDetach
{
	// This method is called right after the view has detached from the proxy
	
	NSLog(@"[VIEWPROXY LIFECYCLE EVENT] viewWillDetach");
}













// Our Implemented Methods

-(NSString*)funcSaring:(id)args{
    NSLog(@"[INFO] ##################################### Method in ViewProxy called Name: -(NSString*)funcSaring:(id)args");
    
    return @"I am a Function in Sample View Proxy class"; 
}

-(id)funcSaringWithReturnTypeId:(id)args{
    NSLog(@"[INFO] ##################################### Method in ViewProxy called Name: -(id)funcSaringWithReturnTypeId:(id)args");
    
    return @"I am a Function in Sample View Proxy class"; 
}

-(NSNumber*)funcNumber:(id)args{
    NSLog(@"[INFO] ##################################### Method in ViewProxy called Name: -(NSNumber*)funcNumber:(id)args");
    
    return NUMINT(51); 
}

-(id)funcNumberWithReturnTypeId:(id)args{
    NSLog(@"[INFO] ##################################### Method in ViewProxy called Name: -(id)funcNumberWithReturnTypeId:(id)args");
    
    return NUMINT(15); 
}

-(id)funcNumberorStringWithReturnTypeId:(id)args{
    NSLog(@"[INFO] ##################################### Method in ViewProxy called Name: -(id)funcNumberorStringWithReturnTypeId:(id)args");
    
    if (args) {
        return NUMINT(33);
    }
    else {
        return @"I am a Function in Sample Proxy class";
    }
    
}

-(NSDictionary*)JSONReturn:(id)args{
    NSLog(@"[INFO] ##################################### Method in ViewProxy called Name: -(NSDictionary*)JSONReturn:(id)args");
    
    if (args) {
        return [args objectAtIndex:0];
    }
    else {
        [NSDictionary dictionaryWithObjectsAndKeys:@"i my in view value1",@"i am  in view  key1",@"i my  in view  value2",@"i am  in view key2",@"i my  in view value3",@"i am  in view key3", nil];
    }
}

-(id)JSONReturnWithreturnTypeId:(id)args{
    NSLog(@"[INFO] ##################################### Method in ViewProxy called Name: -(id)JSONReturnWithreturnTypeId:(id)args");
    
    if (args) {
        return [args objectAtIndex:0];
    }
    else {
        [NSDictionary dictionaryWithObjectsAndKeys:@"i my  in view value1",@"i am in view  key1",@"i my  in view value2",@"i am  in view key2",@"i my  in view value3",@"i am  in view key3", nil];
    }
}











-(id)setTestProperty:(id)args
{
    NSLog(@"[INFO] ##################################### Method in ViewProxy called Name: -(id)setTestProperty:(id)args");
    [self replaceValue:args forKey:@"testProperty" notification:NO];
}

-(id)getTestProperty:(id)args
{
    NSLog(@"[INFO] ##################################### Method in ViewProxy called Name: -(id)getTestProperty:(id)args");
    return [self valueForKey:@"testProperty"];
}

-(id)testProperty
{
    NSLog(@"[INFO] ##################################### Method in ViewProxy called Name: -(id)testProperty");
    return @"Ashish Nigam View Proxy Special Test";
}

-(id)setSample:(id)args
{
    NSLog(@"[INFO] ##################################### Method in ViewProxy called Name: -(id)setSample:(id)args");
    [self replaceValue:args forKey:@"sample" notification:NO];
}



//-(id)test{
//    NSLog(@"[INFO] ##################################### Method in ViewProxy called Name: -(id)test:(id)args");
//    return @"Special##########################view test";//[[self proxy] valueForKey:@"test"];
//}

-(id)getTest:(id)args
{
    NSLog(@"[INFO] ##################################### Method in ViewProxy called Name: -(id)getTest:(id)args");
    return [self valueForKey:@"test"];
}


-(id)getSampleTest:(id)args
{
    NSLog(@"[INFO] ##################################### Method in ViewProxy called Name:-(id)getSampleTest:(id)args");
    [self valueForKey:@"sampleTest"];
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
