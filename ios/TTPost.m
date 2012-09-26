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
//  TTPost.m
//  3taps
//
//  Created by Kyle Thomas on 9/23/12.
//  Copyright (c) 2012 3taps Inc. All rights reserved.
//

#import "TTPost.h"

@implementation TTPost

+ (TTPost *)from:(NSDictionary *)dict {
	TTPost *instance = [[TTPost alloc] init];
	
	instance.accountId = [[dict valueForKey:@"accountId"] intValue];
	instance.annotations = [dict valueForKey:@"annotations"];
	instance.body = [dict valueForKey:@"body"];
	instance.category = [dict valueForKey:@"category"];
	instance.categoryClass = [dict valueForKey:@"categoryClass"];
	instance.currency = [dict valueForKey:@"currency"];
	instance.expirationTimestamp = [dict valueForKey:@"expirationTimestamp"];
	instance.flags = [[dict valueForKey:@"flags"] intValue];
	instance.hasImage = [[dict valueForKey:@"hasImage"] boolValue];
	instance.heading = [dict valueForKey:@"heading"];
	instance.html = [dict valueForKey:@"html"];
	instance.postId = [[dict valueForKey:@"id"] intValue];
	instance.images = [dict valueForKey:@"images"];
	instance.immortal = [[dict valueForKey:@"immortal"] boolValue];
	instance.indexed = [dict valueForKey:@"indexed"];
	instance.language = [dict valueForKey:@"language"];
	instance.location = [TTLocation from:[dict valueForKey:@"location"]];
	instance.postingTimestamp = [dict valueForKey:@"postingTimestamp"];
	instance.price = [[dict valueForKey:@"price"] doubleValue];
	instance.source = [dict valueForKey:@"source"];
	instance.sourceId = [dict valueForKey:@"sourceId"];
	instance.sourceUrl = [dict valueForKey:@"sourceUrl"];
	
	return instance;
}

@end
