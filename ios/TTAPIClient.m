// Copyright (c) 2012 3taps Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

//
//  TTAPIClient.m
//  3taps
//
//  Created by Kyle Thomas on 9/23/12.
//  Copyright (c) 2012 3taps Inc. All rights reserved.
//

#import "TTAPIClient.h"

<<<<<<< HEAD
static const NSString * THREETAPS_API_BASE_URL = @"http://3taps.net";
=======
static const NSString * THREETAPS_API_BASE_URL = @"http://api.3taps.com";
>>>>>>> db32594f090926434872e2e46ca2646adc11d2ba
static const NSString * THREETAPS_API_SEARCH_URI = @"/search";
static const NSString * THREETAPS_API_GEOLOCATE_URI = @"/geolocate";

@implementation TTAPIClient

@synthesize apiKey = _apiKey;

+ (NSString *)getBaseUrlString:(NSString *)apiKey {
	return [NSString stringWithFormat:@"%@%@?authToken=%@",
			THREETAPS_API_BASE_URL, THREETAPS_API_SEARCH_URI, apiKey];
}

#pragma mark designated initializer

- (id)initWithAPIKey:(NSString *)apiKey {
	if (self = [super init]) {
		_apiKey = apiKey;
	}
	
	return self;
}

#pragma mark API request convenience methods

- (NSMutableURLRequest *)newHttpGETRequest:(NSString *)url {
	NSMutableURLRequest *req = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:url]];
	[req setHTTPMethod:@"GET"];
	
	return req;
}

- (NSMutableURLRequest *)newHttpPOSTRequest:(NSString *)url {
	NSMutableURLRequest *req = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:url]];
	[req setHTTPMethod:@"POST"];
	
	return req;
}

- (NSMutableURLRequest *)newHttpPUTRequest:(NSString *)url {
	NSMutableURLRequest *req = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:url]];
	[req setHTTPMethod:@"PUT"];
	
	return req;
}

- (NSMutableURLRequest *)newHttpDELETERequest:(NSString *)url {
	NSMutableURLRequest *req = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:url]];
	[req setHTTPMethod:@"DELETE"];
	
	return req;
}

#pragma mark URL encoder

- (NSString *)urlEncode:(NSString *)str {
	return (__bridge NSString *) CFURLCreateStringByAddingPercentEscapes(NULL,
																		 (__bridge CFStringRef) str,
																		 NULL,
																		 (CFStringRef) @"!*'();:@&=+$,/?%#[]",
																		 kCFStringEncodingUTF8);
}

@end
