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

@class MSSampleContainerItemFetcher;
@class MSSampleContainerAnotherEntityFetcher;
@class MSSampleContainerSampleEntityFetcher;
@class MSSampleContainerEntityOperations;
@class MSSampleContainerEntityFetcher;

#import <core/core.h>
#import "MSSampleContainerModels.h"

/**
* The header for type MSSampleContainerEntityFetcher.
*/

@protocol MSSampleContainerEntityFetcherProtocol<MSOrcEntityFetcher>

@optional

- (void) readWithCallback:(void (^)(MSSampleContainerEntity *entity, MSOrcError *error))callback;
- (MSSampleContainerEntityFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSSampleContainerEntityFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSSampleContainerEntityFetcher *)select:(NSString *)params;
- (MSSampleContainerEntityFetcher *)expand:(NSString *)value;

@required

@property (copy, nonatomic, readonly) MSSampleContainerEntityOperations *operations;

@end

@interface MSSampleContainerEntityFetcher : MSOrcEntityFetcher<MSSampleContainerEntityFetcherProtocol>

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)update:(MSSampleContainerEntity *)entity callback:(void(^)(MSSampleContainerEntity *entity, MSOrcError *error))callback;
- (void)delete:(void(^)(int status, MSOrcError *error))callback;

- (MSSampleContainerItemFetcher *)asItem;	
- (MSSampleContainerAnotherEntityFetcher *)asAnotherEntity;	
- (MSSampleContainerSampleEntityFetcher *)asSampleEntity;	

@end