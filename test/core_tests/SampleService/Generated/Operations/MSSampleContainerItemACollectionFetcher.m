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
* The implementation file for type MSSampleContainerItemACollectionFetcher.
*/

@implementation MSSampleContainerItemACollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    return [super initWithUrl:urlComponent parent:parent asClass:[MSSampleContainerItemA class]];
}

- (void)add:(MSSampleContainerItemA*)entity callback:(void (^)(MSSampleContainerItemA *itemA, MSOrcError *error))callback {
	
	return [super add:entity callback:^(id entityAdded, MSOrcError *e) {

        callback(entityAdded,e);
    }];
}

- (MSSampleContainerItemAFetcher *)getById:(NSString *)id {

    return [[MSSampleContainerItemAFetcher alloc] initWithUrl:[[NSString alloc] initWithFormat:@"('%@')" ,id] parent:self];
}

- (MSSampleContainerItemACollectionFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSSampleContainerItemACollectionFetcher *)filter:(NSString *)params{
    [super filter:params];
    
    return self;
}

- (MSSampleContainerItemACollectionFetcher *)search:(NSString *)params {
    [super search:params];
    
    return self;
}

- (MSSampleContainerItemACollectionFetcher *)top:(int)value {
    [super top:value];
    
    return self;
}

- (MSSampleContainerItemACollectionFetcher *)skip:(int)value {
    [super skip:value];
    
    return self;
}

- (MSSampleContainerItemACollectionFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (MSSampleContainerItemACollectionFetcher *)orderBy:(NSString *)params {
    [super orderBy:params];
    
    return self;
}

- (MSSampleContainerItemACollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSSampleContainerItemACollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

@end