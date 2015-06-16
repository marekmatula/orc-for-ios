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

@class MSSampleContainerEntityFetcher;
@class MSSampleContainerEntityCollectionFetcher;

#import <core/core.h>
#import "MSSampleContainerModels.h"

/**
* The header for type MSSampleContainerEntityCollectionFetcher.
*/

@protocol MSSampleContainerEntityCollectionFetcherProtocol<MSOrcCollectionFetcher>

@optional

- (void)readWithCallback:(void (^)(NSArray<MSSampleContainerEntity> *entitys, MSOrcError *error))callback;

- (MSSampleContainerEntityCollectionFetcher *)select:(NSString *)params;
- (MSSampleContainerEntityCollectionFetcher *)filter:(NSString *)params;
- (MSSampleContainerEntityCollectionFetcher *)search:(NSString *)params;
- (MSSampleContainerEntityCollectionFetcher *)top:(int)value;
- (MSSampleContainerEntityCollectionFetcher *)skip:(int)value;
- (MSSampleContainerEntityCollectionFetcher *)expand:(NSString *)value;
- (MSSampleContainerEntityCollectionFetcher *)orderBy:(NSString *)params;
- (MSSampleContainerEntityCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSSampleContainerEntityCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@required

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;
- (MSSampleContainerEntityFetcher *)getById:(NSString *)Id;
- (void)add:(MSSampleContainerEntity *)entity callback:(void (^)(MSSampleContainerEntity *entity, MSOrcError *error))callback;

@end

@interface MSSampleContainerEntityCollectionFetcher : MSOrcCollectionFetcher<MSSampleContainerEntityCollectionFetcherProtocol>

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

@end