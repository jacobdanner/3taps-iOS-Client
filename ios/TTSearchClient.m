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
//  TTSearchClient.m
//  3taps
//
//  Created by Kyle Thomas on 9/23/12.
//  Copyright (c) 2012 3taps Inc. All rights reserved.
//

#import "TTSearchClient.h"

@implementation TTSearchClient

@synthesize delegate = _delegate;

#pragma mark 3taps search methods

- (void)search:(NSDictionary *)params {
	NSString *urlString = [TTAPIClient getBaseUrlString:self.apiKey];
	for (NSString *key in [params allKeys]) {
		urlString = [urlString stringByAppendingFormat:@"&%@=%@", key, [self urlEncode:[params valueForKey:key]]];
	}
	NSMutableURLRequest *req = [self newHttpGETRequest:urlString];

	TTSearchClientConnectionDelegate *delegate = [[TTSearchClientConnectionDelegate alloc] initWithDelegate:_delegate];

	NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:req
															delegate:delegate];
	[conn start];
}

@end
