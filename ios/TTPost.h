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
//  TTPost.h
//  3taps
//
//  Created by Kyle Thomas on 9/23/12.
//  Copyright (c) 2012 3taps Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TTLocation.h"

@interface TTPost : NSObject {
@public
	int accountId;
	NSDictionary *annotations;
	NSString *body;
	NSString *category;
	NSString *categoryClass;
	NSString *currency;
	NSString *expirationTimestamp;
	int flags;
	BOOL hasImage;
	NSString *heading;
	NSString *html;
	int postId;
	NSArray *images;
	BOOL immortal;
	NSString *indexed;
	NSString *language;
	TTLocation *location;
	NSString *postingTimestamp;
	double price;
	NSString *source;
	NSString *sourceId;
	NSString *sourceUrl;
}

+ (TTPost *)from:(NSDictionary *)dict;

@property (nonatomic) int accountId;
@property (nonatomic, strong) NSDictionary *annotations;
@property (nonatomic, strong) NSString *body;
@property (nonatomic, strong) NSString *category;
@property (nonatomic, strong) NSString *categoryClass;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic, strong) NSString *expirationTimestamp;
@property (nonatomic) int flags;
@property (nonatomic) BOOL hasImage;
@property (nonatomic, strong) NSString *heading;
@property (nonatomic, strong) NSString *html;
@property (nonatomic) int postId;
@property (nonatomic, strong) NSArray *images;
@property (nonatomic) BOOL immortal;
@property (nonatomic, strong) NSString *indexed;
@property (nonatomic, strong) NSString *language;
@property (nonatomic, strong) TTLocation *location;
@property (nonatomic, strong) NSString *postingTimestamp;
@property (nonatomic) double price;
@property (nonatomic, strong) NSString *source;
@property (nonatomic, strong) NSString *sourceId;
@property (nonatomic, strong) NSString *sourceUrl;

@end
