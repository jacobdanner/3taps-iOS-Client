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
//  TTSearchClient.h
//  3taps
//
//  Created by Kyle Thomas on 9/23/12.
//  Copyright (c) 2012 3taps Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TTAPIClient.h"
#import "TTSearchClientConnectionDelegate.h"

@class TTAPIClient;

@protocol TTSearchClientDelegate <NSObject>

- (void)didReceiveSearchResponse:(NSArray *)results execTimeMs:(int)execTime numResults:(int)numResults;

@end

@interface TTSearchClient : TTAPIClient {
@private
	__weak id _delegate;
}

- (void)search:(NSDictionary *)params;

@property (nonatomic, weak) id delegate;

@end
