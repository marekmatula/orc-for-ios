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
#import "MSSampleContainerFetchers.h"

/**
* The implementation file for type MSSampleContainerItemBCollectionFetcher.
*/

@implementation MSSampleContainerItemBCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    return [super initWithUrl:urlComponent parent:parent asClass:[MSSampleContainerItemB class]];
}

- (void)add:(MSSampleContainerItemB*)entity callback:(void (^)(MSSampleContainerItemB *itemB, MSOrcError *error))callback {
	
	return [super add:entity callback:^(id entityAdded, MSOrcError *e) {

        callback(entityAdded,e);
    }];
}

- (MSSampleContainerItemBFetcher *)getById:(NSString *)id {

    return [[MSSampleContainerItemBFetcher alloc] initWithUrl:[[NSString alloc] initWithFormat:@"('%@')" ,id] parent:self];
}

- (MSSampleContainerItemBCollectionFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSSampleContainerItemBCollectionFetcher *)filter:(NSString *)params{
    [super filter:params];
    
    return self;
}

- (MSSampleContainerItemBCollectionFetcher *)search:(NSString *)params {
    [super search:params];
    
    return self;
}

- (MSSampleContainerItemBCollectionFetcher *)top:(int)value {
    [super top:value];
    
    return self;
}

- (MSSampleContainerItemBCollectionFetcher *)skip:(int)value {
    [super skip:value];
    
    return self;
}

- (MSSampleContainerItemBCollectionFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (MSSampleContainerItemBCollectionFetcher *)orderBy:(NSString *)params {
    [super orderBy:params];
    
    return self;
}

- (MSSampleContainerItemBCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSSampleContainerItemBCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

@end