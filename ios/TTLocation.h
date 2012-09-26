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
//  TTLocation.h
//  3taps
//
//  Created by Kyle Thomas on 9/23/12.
//  Copyright (c) 2012 3taps Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TTLocation : NSObject {
@public
	float latitude;
	float longitude;
	double accuracy;
	
	NSString *countryCode;
	NSString *country;
	NSString *stateCode;
	NSString *state;
	NSString *metroCode;
	NSString *metro;
	NSString *regionCode;
	NSString *region;
	NSString *countyCode;
	NSString *county;
	NSString *cityCode;
	NSString *city;
	NSString *localityCode;
	NSString *locality;
	NSString *zipCode;
	NSString *zip;
}

+ (TTLocation *)from:(NSDictionary *)dict;

@property (nonatomic) float latitude;
@property (nonatomic) float longitude;
@property (nonatomic) double accuracy;
@property (nonatomic, strong) NSString *countryCode;
@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) NSString *stateCode;
@property (nonatomic, strong) NSString *state;
@property (nonatomic, strong) NSString *metroCode;
@property (nonatomic, strong) NSString *metro;
@property (nonatomic, strong) NSString *regionCode;
@property (nonatomic, strong) NSString *region;
@property (nonatomic, strong) NSString *countyCode;
@property (nonatomic, strong) NSString *county;
@property (nonatomic, strong) NSString *cityCode;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *localityCode;
@property (nonatomic, strong) NSString *locality;
@property (nonatomic, strong) NSString *zipCode;
@property (nonatomic, strong) NSString *zip;


@end
