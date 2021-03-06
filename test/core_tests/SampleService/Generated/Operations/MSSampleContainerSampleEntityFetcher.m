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

@implementation MSSampleContainerSampleEntityFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSSampleContainerSampleEntity class]]) {

		_operations = [[MSSampleContainerSampleEntityOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSSampleContainerSampleEntity *sampleEntity, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSSampleContainerSampleEntityFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSSampleContainerSampleEntityFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSSampleContainerSampleEntityFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSSampleContainerSampleEntityFetcher *)expand:(NSString *)value {
    [super select:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSSampleContainerSampleEntity *sampleEntity, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSSampleContainerSampleEntityFetcher *)nestedSampleEntity {

	 return [[MSSampleContainerSampleEntityFetcher alloc] initWithUrl:@"nestedSampleEntity" parent:self asClass:[MSSampleContainerSampleEntity class]];
}

- (MSSampleContainerAnotherEntityCollectionFetcher *)navigations {

    return [[MSSampleContainerAnotherEntityCollectionFetcher alloc] initWithUrl:@"Navigations" parent:self asClass:[MSSampleContainerAnotherEntity class]];
}

- (MSSampleContainerAnotherEntityFetcher *)getNavigationsById:(NSString *)id {

    return [[[MSSampleContainerAnotherEntityCollectionFetcher alloc] initWithUrl:@"Navigations" parent:self asClass:[MSSampleContainerAnotherEntity class]] getById:id];
}

- (MSSampleContainerItemCollectionFetcher *)items {

    return [[MSSampleContainerItemCollectionFetcher alloc] initWithUrl:@"Items" parent:self asClass:[MSSampleContainerItem class]];
}

- (MSSampleContainerItemFetcher *)getItemsById:(NSString *)id {

    return [[[MSSampleContainerItemCollectionFetcher alloc] initWithUrl:@"Items" parent:self asClass:[MSSampleContainerItem class]] getById:id];
}

- (MSSampleContainerSampleEntityCollectionFetcher *)nestedSampleEntityCollection {

    return [[MSSampleContainerSampleEntityCollectionFetcher alloc] initWithUrl:@"nestedSampleEntityCollection" parent:self asClass:[MSSampleContainerSampleEntity class]];
}

- (MSSampleContainerSampleEntityFetcher *)getNestedSampleEntityCollectionById:(NSString *)id {

    return [[[MSSampleContainerSampleEntityCollectionFetcher alloc] initWithUrl:@"nestedSampleEntityCollection" parent:self asClass:[MSSampleContainerSampleEntity class]] getById:id];
}

@end