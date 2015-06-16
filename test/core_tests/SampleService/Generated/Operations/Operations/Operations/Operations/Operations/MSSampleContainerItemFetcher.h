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

@class MSSampleContainerItemAFetcher;
@class MSSampleContainerItemBFetcher;
@class MSSampleContainerItemOperations;
@class MSSampleContainerItemFetcher;

#import <core/core.h>
#import "MSSampleContainerModels.h"

/**
* The header for type MSSampleContainerItemFetcher.
*/

@protocol MSSampleContainerItemFetcherProtocol<MSOrcEntityFetcher>

@optional

- (void) readWithCallback:(void (^)(MSSampleContainerItem *item, MSOrcError *error))callback;
- (MSSampleContainerItemFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSSampleContainerItemFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSSampleContainerItemFetcher *)select:(NSString *)params;
- (MSSampleContainerItemFetcher *)expand:(NSString *)value;

@required

@property (copy, nonatomic, readonly) MSSampleContainerItemOperations *operations;

@end

@interface MSSampleContainerItemFetcher : MSOrcEntityFetcher<MSSampleContainerItemFetcherProtocol>

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)update:(MSSampleContainerItem *)item callback:(void(^)(MSSampleContainerItem *item, MSOrcError *error))callback;
- (void)delete:(void(^)(int status, MSOrcError *error))callback;

- (MSSampleContainerItemAFetcher *)asItemA;	
- (MSSampleContainerItemBFetcher *)asItemB;	

@end