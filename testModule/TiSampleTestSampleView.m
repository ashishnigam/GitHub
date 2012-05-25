/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2012 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiSampleTestSampleView.h"

@implementation TiSampleTestSampleView

-(void)dealloc
{
	NSLog(@"[VIEW LIFECYCLE EVENT] dealloc");
	
	// Release objects and memory allocated by the view
	RELEASE_TO_NIL(square);
	
	[super dealloc];
}

-(void)willMoveToSuperview:(UIView *)newSuperview
{
	NSLog(@"[VIEW LIFECYCLE EVENT] willMoveToSuperview");
}

-(void)initializeState
{
	// This method is called right after allocating the view and
	// is useful for initializing anything specific to the view
	
	[super initializeState];
	
	NSLog(@"[VIEW LIFECYCLE EVENT] initializeState");
}

-(void)configurationSet
{
	// This method is called right after all view properties have
	// been initialized from the view proxy. If the view is dependent
	// upon any properties being initialized then this is the method
	// to implement the dependent functionality.
	
	[super configurationSet];
	
	NSLog(@"[VIEW LIFECYCLE EVENT] configurationSet");
}


-(UIView*)square
{
     NSLog(@"[INFO] ##################################### Method in View called Name: -(UIView*)square");
    if (square==nil)
    {
        square = [[UIView alloc] initWithFrame:[self frame]];
        [self addSubview:square];
    }
    return square;
}


-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
     NSLog(@"[INFO] ##################################### Method in View called Name: -(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds");
    if (square!=nil)
    {
        [TiUtils setView:square positionRect:bounds];
    }
}


-(void)setColor_:(id)color
{
     NSLog(@"[INFO] ##################################### Method in View called Name: -(void)setColor_:(id)color");
    UIColor *c = [[TiUtils colorValue:color] _color];
    UIView *s = [self square];
    s.backgroundColor = c;
}


-(void)setTestProperty_:(id)args
{
     NSLog(@"[INFO] ##################################### Method in View called Name: -(id)setTestProperty_:(id)args");
    [[self proxy] replaceValue:args forKey:@"testProperty" notification:NO];
}

//-(id)getTestProperty:(id)args
//{
//     NSLog(@"[INFO] ##################################### Method in View called Name: -(id)getTestProperty:(id)args");
//    return [[self proxy] valueForKey:@"testProperty"];
//}
//
//-(id)getTestProperty_:(id)args
//{
//    NSLog(@"[INFO] ##################################### Method in View called Name: -(id)getTestProperty_:(id)args");
//    return [[self proxy] valueForKey:@"testProperty"];
//}

-(id)setTest_:(id)args
{
     NSLog(@"[INFO] ##################################### Method in View called Name: -(id)setTest_:(id)args");
    [[self proxy] replaceValue:args forKey:@"test" notification:NO];
}


// value from View class can't be returned directly to JS Developer, until we use Events and CallBack function.

// these get function won't work

-(id)getTest:(id)args
{
    NSLog(@"[INFO] ##################################### Method in View called Name:-(id)getTest:(id)args");
    return [[self proxy] valueForKey:@"test"];
}

-(id)test_
{
     NSLog(@"[INFO] ##################################### Method in View called Name: -(id)test_:(id)args");
    return @"Special##########################view test";
}

-(id)test
{
     NSLog(@"[INFO] ##################################### Method in View called Name: -(id)test:(id)args");
    return @"Special##########################view test";//[[self proxy] valueForKey:@"test"];
}


-(id)setSampleTest:(id)args
{
     NSLog(@"[INFO] ##################################### Method in View called Name: -(id)setSampleTest:(id)args");
    [self.proxy replaceValue:@"internal value" forKey:@"sampleTest" notification:NO];
}

@end
