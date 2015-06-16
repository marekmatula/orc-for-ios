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

@class MSSampleContainerSampleEntityCollectionFetcher;
@class MSSampleContainerSampleEntityFetcher;

#import <core/core.h>
#import "MSSampleContainerModels.h"

/**
* The header for type MSSampleContainerClient.
*/

@interface MSSampleContainerClient : MSOrcBaseContainer

- (instancetype)initWithUrl:(NSString *)url  dependencyResolver:(id<MSOrcDependencyResolver>)resolver;
@property (retain, nonatomic, readonly, getter=services) MSSampleContainerSampleEntityCollectionFetcher *services;
@property (retain, nonatomic, readonly, getter=me) MSSampleContainerSampleEntityFetcher *me;

@end