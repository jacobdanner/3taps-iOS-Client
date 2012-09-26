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
//  TTLocation.m
//  3taps
//
//  Created by Kyle Thomas on 9/23/12.
//  Copyright (c) 2012 3taps Inc. All rights reserved.
//

#import "TTLocation.h"

@implementation TTLocation

+ (TTLocation *)from:(NSDictionary *)dict {
	TTLocation *instance = [[TTLocation alloc] init];

	NSDictionary *coordinate = [dict valueForKey:@"coord"];
	NSDictionary *country = [dict valueForKey:@"country"];
	NSDictionary *state = [dict valueForKey:@"state"];
	NSDictionary *metro = [dict valueForKey:@"metro"];
	NSDictionary *region = [dict valueForKey:@"region"];
	NSDictionary *county = [dict valueForKey:@"county"];
	NSDictionary *city = [dict valueForKey:@"city"];
	NSDictionary *locality = [dict valueForKey:@"locality"];
	NSDictionary *zip = [dict valueForKey:@"zipCode"];

	if (coordinate) {
		instance.latitude = [[coordinate valueForKey:@"lat"] floatValue];
		instance.longitude = [[coordinate valueForKey:@"long"] floatValue];
	} else {
		NSNumber *latitude = [dict valueForKey:@"latitude"];
		NSNumber *longitude = [dict valueForKey:@"longitude"];
		NSNumber *accuracy = [dict valueForKey:@"accuracy"];

		if (latitude) {
			instance.latitude = [latitude floatValue];
		}

		if (longitude) {
			instance.longitude = [longitude floatValue];
		}

		if (accuracy) {
			instance.accuracy = [accuracy doubleValue];
		}
	}
	
	if (country) {
		instance.countryCode = [country valueForKey:@"code"];
		instance.country = [country valueForKey:@"name"];
	} else {
		instance.countryCode = [dict valueForKey:@"countryCode"];
	}

	if (state) {
		instance.stateCode = [state valueForKey:@"code"];
		instance.state = [state valueForKey:@"name"];
	} else {
		instance.stateCode = [dict valueForKey:@"stateCode"];
	}

	if (metro) {
		instance.metroCode = [metro valueForKey:@"code"];
		instance.metro = [metro valueForKey:@"name"];
	} else {
		instance.metroCode = [dict valueForKey:@"metroCode"];
	}

	if (region) {
		instance.regionCode = [region valueForKey:@"code"];
		instance.region = [region valueForKey:@"name"];
	} else {
		instance.regionCode = [dict valueForKey:@"regionCode"];
	}
	
	if (county) {
		instance.countyCode = [county valueForKey:@"code"];
		instance.county = [county valueForKey:@"name"];
	} else {
		instance.countyCode = [dict valueForKey:@"countyCode"];
	}

	if (city) {
		instance.cityCode = [city valueForKey:@"code"];
		instance.city = [city valueForKey:@"name"];
	} else {
		instance.cityCode = [dict valueForKey:@"cityCode"];
	}

	if (locality) {
		instance.localityCode = [locality valueForKey:@"code"];
		instance.locality = [locality valueForKey:@"name"];
	} else {
		instance.localityCode = [dict valueForKey:@"localityCode"];
	}
	
	if (zip) {
		instance.zipCode = [zip valueForKey:@"code"];
		instance.zip = [zip valueForKey:@"name"];
	} else {
		instance.zipCode = [dict valueForKey:@"zipCode"];
	}
	
	return instance;
}

@end
