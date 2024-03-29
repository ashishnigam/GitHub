/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2012 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */
#import "TiProxy.h"

@interface TiSampleTestKrollCallBackProxy : TiProxy <TiProxyDelegate>{
    
@private
	// The JavaScript callbacks (KrollCallback objects)
	KrollCallback *successCallback;
	KrollCallback *cancelCallback;
	KrollCallback *requestDataCallback;


}

@end
