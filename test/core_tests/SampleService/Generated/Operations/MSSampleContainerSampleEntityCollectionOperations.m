/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/
#import "MSSampleContainerSampleEntityCollectionOperations.h"
#import "MSSampleContainerFetchers.h"

/**
* The implementation file for type MSSampleContainerSampleEntityCollectionOperations.
*/

@implementation MSSampleContainerSampleEntityCollectionOperations

- (void)someFunctionWithPath:(NSString *)path callback:(void (^)(MSSampleContainerSampleComplexType *sampleComplexType, MSOrcError *error))callback {

	id<MSOrcRequest> request = [super.resolver createOrcRequest];
	NSDictionary *params = [[NSDictionary alloc] initWithObjectsAndKeys:path,@"path",nil];


	NSString *parameters = [MSOrcBaseContainer getFunctionParameters:params];
	
	[request.url appendPathComponent:[[NSString alloc] initWithFormat:@"SomeFunction(%@)",parameters]];
		
	return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e){

       if (e == nil) {

			MSSampleContainerSampleComplexType * result = (MSSampleContainerSampleComplexType *)[super.resolver.jsonSerializer deserialize:response.data asClass:[MSSampleContainerSampleComplexType class]];
            callback(result, e);
        }
        else {

            callback(nil, e);
        }
    }];
}		
@end