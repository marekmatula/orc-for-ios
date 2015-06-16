/*******************************************************************************
Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the MIT or Apache License; see LICENSE in the source repository
root for authoritative license information.﻿

**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).
******************************************************************************/

#import "MSSampleContainerFetchers.h"

/**
* The implementation file for type MSSampleContainerSampleEntityOperations.
*/

@implementation MSSampleContainerSampleEntityOperations

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {
 
    return [super initOperationWithUrl:urlComponent parent:parent];
}

- (void)twoParamsActionsFirstIsEntityTypeWithAnEntity:(MSSampleContainerSampleEntity *)anEntity booleanParams:(BOOL )booleanParams callback:(void (^)(int returnValue, MSOrcError *error))callback {
	
	NSString *anEntityString = [self.resolver.jsonSerializer serialize:anEntity property:@"AnEntity"];
	NSString *booleanParamsString = [self.resolver.jsonSerializer serialize:(booleanParams ? @"true" : @"false") property:@"BooleanParams"];
	return [self twoParamsActionsFirstIsEntityTypeRawWithAnEntity:anEntityString booleanParams:booleanParamsString callback:^(NSString *returnValue, MSOrcError *e) {
       
	   if (e == nil) {

			int result = (int)[super.resolver.jsonSerializer deserialize:[returnValue dataUsingEncoding:NSUTF8StringEncoding] asClass:nil];
            callback(result, e);
        } 
		else {

            callback((int)[returnValue integerValue], e);
        }
    }];
}

- (void)twoParamsActionsFirstIsEntityTypeRawWithAnEntity:(NSString *) anEntity booleanParams:(NSString *) booleanParams callback:(void(^)(NSString *returnValue, MSOrcError *error))callback {

	id<MSOrcRequest> request = [super.resolver createOrcRequest];
	NSArray *parameters = [[NSArray alloc] initWithObjects:
                          [[NSDictionary alloc] initWithObjectsAndKeys :anEntity,@"AnEntity", nil],
                          [[NSDictionary alloc] initWithObjectsAndKeys :booleanParams,@"BooleanParams", nil], nil];

	NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];

	[request setContent:payload];


	
	[request setVerb:HTTP_VERB_POST];
	 	[request.url appendPathComponent:@"Microsoft.SampleService.TwoParamsActionsFirstIsEntityType"];
     
	return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
}
    				
- (void)twoParamsActionsFirstIsComplexTypeWithComplexType:(MSSampleContainerSampleComplexType *)complexType booleanParams:(BOOL )booleanParams callback:(void (^)(int returnValue, MSOrcError *error))callback {
	
	NSString *complexTypeString = [self.resolver.jsonSerializer serialize:complexType property:@"ComplexType"];
	NSString *booleanParamsString = [self.resolver.jsonSerializer serialize:(booleanParams ? @"true" : @"false") property:@"BooleanParams"];
	return [self twoParamsActionsFirstIsComplexTypeRawWithComplexType:complexTypeString booleanParams:booleanParamsString callback:^(NSString *returnValue, MSOrcError *e) {
       
	   if (e == nil) {

			int result = (int)[super.resolver.jsonSerializer deserialize:[returnValue dataUsingEncoding:NSUTF8StringEncoding] asClass:nil];
            callback(result, e);
        } 
		else {

            callback((int)[returnValue integerValue], e);
        }
    }];
}

- (void)twoParamsActionsFirstIsComplexTypeRawWithComplexType:(NSString *) complexType booleanParams:(NSString *) booleanParams callback:(void(^)(NSString *returnValue, MSOrcError *error))callback {

	id<MSOrcRequest> request = [super.resolver createOrcRequest];
	NSArray *parameters = [[NSArray alloc] initWithObjects:
                          [[NSDictionary alloc] initWithObjectsAndKeys :complexType,@"ComplexType", nil],
                          [[NSDictionary alloc] initWithObjectsAndKeys :booleanParams,@"BooleanParams", nil], nil];

	NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];

	[request setContent:payload];


	
	[request setVerb:HTTP_VERB_POST];
	 	[request.url appendPathComponent:@"Microsoft.SampleService.TwoParamsActionsFirstIsComplexType"];
     
	return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
}
    				
- (void)twoParamsActionsFirstIsCollectionEntityTypeWithCollectionType:(NSArray<MSSampleContainerSampleEntity> *)collectionType booleanParams:(BOOL )booleanParams callback:(void (^)(int returnValue, MSOrcError *error))callback {
	
	NSString *collectionTypeString = [self.resolver.jsonSerializer serialize:collectionType property:@"CollectionType"];
	NSString *booleanParamsString = [self.resolver.jsonSerializer serialize:(booleanParams ? @"true" : @"false") property:@"BooleanParams"];
	return [self twoParamsActionsFirstIsCollectionEntityTypeRawWithCollectionType:collectionTypeString booleanParams:booleanParamsString callback:^(NSString *returnValue, MSOrcError *e) {
       
	   if (e == nil) {

			int result = (int)[super.resolver.jsonSerializer deserialize:[returnValue dataUsingEncoding:NSUTF8StringEncoding] asClass:nil];
            callback(result, e);
        } 
		else {

            callback((int)[returnValue integerValue], e);
        }
    }];
}

- (void)twoParamsActionsFirstIsCollectionEntityTypeRawWithCollectionType:(NSString *) collectionType booleanParams:(NSString *) booleanParams callback:(void(^)(NSString *returnValue, MSOrcError *error))callback {

	id<MSOrcRequest> request = [super.resolver createOrcRequest];
	NSArray *parameters = [[NSArray alloc] initWithObjects:
                          [[NSDictionary alloc] initWithObjectsAndKeys :collectionType,@"CollectionType", nil],
                          [[NSDictionary alloc] initWithObjectsAndKeys :booleanParams,@"BooleanParams", nil], nil];

	NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];

	[request setContent:payload];


	
	[request setVerb:HTTP_VERB_POST];
	 	[request.url appendPathComponent:@"Microsoft.SampleService.TwoParamsActionsFirstIsCollectionEntityType"];
     
	return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
}
    				
- (void)twoParamsActionsFirstIsCollectionComplexTypeWithCollectionType:(NSArray<MSSampleContainerSampleComplexType> *)collectionType booleanParams:(BOOL )booleanParams callback:(void (^)(int returnValue, MSOrcError *error))callback {
	
	NSString *collectionTypeString = [self.resolver.jsonSerializer serialize:collectionType property:@"CollectionType"];
	NSString *booleanParamsString = [self.resolver.jsonSerializer serialize:(booleanParams ? @"true" : @"false") property:@"BooleanParams"];
	return [self twoParamsActionsFirstIsCollectionComplexTypeRawWithCollectionType:collectionTypeString booleanParams:booleanParamsString callback:^(NSString *returnValue, MSOrcError *e) {
       
	   if (e == nil) {

			int result = (int)[super.resolver.jsonSerializer deserialize:[returnValue dataUsingEncoding:NSUTF8StringEncoding] asClass:nil];
            callback(result, e);
        } 
		else {

            callback((int)[returnValue integerValue], e);
        }
    }];
}

- (void)twoParamsActionsFirstIsCollectionComplexTypeRawWithCollectionType:(NSString *) collectionType booleanParams:(NSString *) booleanParams callback:(void(^)(NSString *returnValue, MSOrcError *error))callback {

	id<MSOrcRequest> request = [super.resolver createOrcRequest];
	NSArray *parameters = [[NSArray alloc] initWithObjects:
                          [[NSDictionary alloc] initWithObjectsAndKeys :collectionType,@"CollectionType", nil],
                          [[NSDictionary alloc] initWithObjectsAndKeys :booleanParams,@"BooleanParams", nil], nil];

	NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];

	[request setContent:payload];


	
	[request setVerb:HTTP_VERB_POST];
	 	[request.url appendPathComponent:@"Microsoft.SampleService.TwoParamsActionsFirstIsCollectionComplexType"];
     
	return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
}
    				
@end