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
//  TTGeolocatorClient.m
//  3taps
//
//  Created by Kyle Thomas on 9/23/12.
//  Copyright (c) 2012 3taps Inc. All rights reserved.
//

#import "TTGeolocatorClient.h"

@implementation TTGeolocatorClient

@synthesize delegate = _delegate;

#pragma mark 3taps geolocator methods

- (void)geolocate:(NSString *)text {
	NSString *urlString = [TTAPIClient getBaseUrlString:self.apiKey];
	urlString = [urlString stringByAppendingFormat:@"?text=%@", [self urlEncode:text]];
	NSMutableURLRequest *req = [self newHttpGETRequest:urlString];
	
	TTGeolocatorClientConnectionDelegate *delegate = [[TTGeolocatorClientConnectionDelegate alloc] initWithDelegate:_delegate];
	
	NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:req
															delegate:delegate];
	[conn start];
}

@end
