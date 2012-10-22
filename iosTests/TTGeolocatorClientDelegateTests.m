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
//  TTGeolocatorClientDelegateTests.m
//  TTGeolocatorClientDelegateTests
//
//  Created by Kyle Thomas on 9/23/12.
//  Copyright (c) 2012 3taps Inc. All rights reserved.
//

#import "TTGeolocatorClientDelegateTests.h"

<<<<<<< HEAD
static NSString * TEST_3TAPS_API_KEY = @"75c8e3851e874fe692a8199022a06645"; // this key is seriously limited... get your own key!
=======
static NSString * TEST_3TAPS_API_KEY = @"9334vjku57dus2etf4bxve95"; // this key is seriously limited... get your own key!
>>>>>>> db32594f090926434872e2e46ca2646adc11d2ba

@implementation TTGeolocatorClientDelegateTests

+ (NSString *)getSampleLocationsJson {
	return @"{\"locations\": [{\"country\": {\"code\": \"USA\", \"name\": \"United States\"}, \"struct\": {\"metro\": \"NEW YORK\"}, \"metro\": {\"code\": \"USA-NYM\", \"name\": \"New York, NY-NJ-CT-PA\"}}]}";
}

- (void)setUp {
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown {
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testSearchDelegate {
	TTGeolocatorClient *client = [[TTGeolocatorClient alloc] initWithAPIKey:TEST_3TAPS_API_KEY];
	STAssertNotNil(client, nil);
	
	[client setDelegate:self];
	STAssertNotNil(client.delegate, nil);
	
	TTGeolocatorClientConnectionDelegate *mockConnDelegate = [[TTGeolocatorClientConnectionDelegate alloc] initWithDelegate:client.delegate];
	
	NSString *responseEntity = [TTGeolocatorClientDelegateTests getSampleLocationsJson];
	
	[mockConnDelegate connection:nil willSendRequest:nil redirectResponse:nil]; // mock call to test response data initialization
	[mockConnDelegate connection:nil didReceiveData:[responseEntity dataUsingEncoding:NSUTF8StringEncoding]]; // populate response data
	[mockConnDelegate connectionDidFinishLoading:nil]; // connection object isn't actually needed here.
	
<<<<<<< HEAD
	// geolocator delegate callback has fired at this time
=======
	// search delegate callback has fired at this time
>>>>>>> db32594f090926434872e2e46ca2646adc11d2ba
	
	[self verifyLocations];
}

<<<<<<< HEAD
#pragma mark TTGeolocatorClientDelegate
=======
#pragma mark TTSearchDelegate
>>>>>>> db32594f090926434872e2e46ca2646adc11d2ba

- (void)didReceiveGeolocationResponse:(NSArray *)locations {
	_locations = locations;
}

- (void)verifyLocations {
	STAssertNotNil(_locations, nil);
	
	_locations = nil;
}

@end
