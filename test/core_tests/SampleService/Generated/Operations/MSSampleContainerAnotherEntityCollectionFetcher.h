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
@class MSSampleContainerAnotherEntityFetcher;

#import <core/core.h>
#import "MSSampleContainerModels.h"

/**
* The header for type MSSampleContainerAnotherEntityCollectionFetcher.
*/

@interface MSSampleContainerAnotherEntityCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSSampleContainerAnotherEntityFetcher *)getById:(NSString *)Id;
- (void)add:(MSSampleContainerAnotherEntity *)entity callback:(void (^)(MSSampleContainerAnotherEntity *anotherEntity, MSOrcError *error))callback;

- (MSSampleContainerAnotherEntityCollectionFetcher *)select:(NSString *)params;
- (MSSampleContainerAnotherEntityCollectionFetcher *)filter:(NSString *)params;
- (MSSampleContainerAnotherEntityCollectionFetcher *)search:(NSString *)params;
- (MSSampleContainerAnotherEntityCollectionFetcher *)top:(int)value;
- (MSSampleContainerAnotherEntityCollectionFetcher *)skip:(int)value;
- (MSSampleContainerAnotherEntityCollectionFetcher *)expand:(NSString *)value;
- (MSSampleContainerAnotherEntityCollectionFetcher *)orderBy:(NSString *)params;
- (MSSampleContainerAnotherEntityCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSSampleContainerAnotherEntityCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end