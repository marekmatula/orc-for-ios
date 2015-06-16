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

@class MSSampleContainerItemAOperations;
@class MSSampleContainerItemAFetcher;

#import <core/core.h>
#import "MSSampleContainerModels.h"

/**
* The header for type MSSampleContainerItemAFetcher.
*/

@protocol MSSampleContainerItemAFetcherProtocol<MSOrcEntityFetcher>

@optional

- (void) readWithCallback:(void (^)(MSSampleContainerItemA *itemA, MSOrcError *error))callback;
- (MSSampleContainerItemAFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSSampleContainerItemAFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSSampleContainerItemAFetcher *)select:(NSString *)params;
- (MSSampleContainerItemAFetcher *)expand:(NSString *)value;

@required

@property (copy, nonatomic, readonly) MSSampleContainerItemAOperations *operations;

@end

@interface MSSampleContainerItemAFetcher : MSOrcEntityFetcher<MSSampleContainerItemAFetcherProtocol>

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)update:(MSSampleContainerItemA *)itemA callback:(void(^)(MSSampleContainerItemA *itemA, MSOrcError *error))callback;
- (void)delete:(void(^)(int status, MSOrcError *error))callback;


@end