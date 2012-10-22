# 3taps iOS Client API

This version of the 3taps iOS client API is compatible with the new version of
the 3taps search API and datastructure (see http://3taps.com/developers for the
latest documentation). Also, please note that this version of the API uses ARC
and all API calls made under the covers are asynchronous.

##Pre-requisites

1) 3taps API key for your application -- http://register.3taps.com
2) SBJSON, written by Stig Brautaset (it's included with the source distribution, 
but worth mentioning here also)

##Search API Usage

	#import "TTSearchClient.h"
	#import "TTSearchClientDelegate.h"
	#import "TTPost.h"

	TTSearchClient *searchApi = [[TTSearchClient alloc] initWithAPIKey:@"your_api_token"];
	[searchApi setDelegate:self]; // check out the "TTSearchClientDelegate section below"

	NSMutableDictionary *params = [NSMutableDictionary dictionary];
	[params setValue:@"CRAIG" forKey:@"source"];
	[params setValue:@"{make:ford AND model:mustang}" forKey:@"annotations"]; // don't url encode anything!

	[searchApi search:params]; // all the params get URL-encoded as needed under the covers here

##TTSearchClientDelegate

	#pragma mark TTSearchClientDelegate

	- (void)didReceiveSearchResponse:(NSArray *)results execTimeMs:(int)execTime numResults:(int)numResults {
		for (NSDictionary *postDict in results) {
			TTPost *post = [TTPost from:postDict]; // reference model

			// do something cool
		}

		dispatch_async(dispatch_get_main_queue(), ^{
			// do something cool on the UI
		});
	}

##Geolocator API Usage

	#import "TTGeolocatorClient.h"
	#import "TTGeolocatorClientDelegate.h"
	#import "TTLocation.h"

	TTGeolocatorClient *geolocatorApi = [[TTGeolocatorClient alloc] initWithAPIKey:@"your_api_token"];
	[geolocatorApi setDelegate:self]; // check out the "TTGeolocatorClientDelegate section below"

	[geolocatorApi geolocate:@"San Francisco, CA"]; // don't URL-encode your geolocator query here!

##TTGeolocatorClientDelegate

	#pragma mark TTGeolocatorClientDelegate

	- (void)didReceiveGeolocationResponse:(NSArray *)locations {
		for (NSDictionary *locationDict in locations) {
			TTLocation *location = [TTLocation from:locationDict]; // reference model

			// do something cool
		}

		dispatch_async(dispatch_get_main_queue(), ^{
			// do something cool on the UI
		});
	}

##Unit Tests

The included unit tests essentially mock the behavior of the various
TTAPIClientConnectionDelegate subclasses, all of which conform to the
NSURLConnectionDataDelegate protocol.

##License

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

##Questions & comments

Direct inquiries to our twitter account (@3taps) or via email to
Kyle (kthomas at 3taps.com).

