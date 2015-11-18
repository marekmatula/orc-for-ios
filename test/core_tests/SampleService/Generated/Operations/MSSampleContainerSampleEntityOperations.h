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
				  		
#import <core/core.h>
#import "MSSampleContainerModels.h"
#import "MSSampleContainerEntityOperations.h"

/**
* The header for type MSSampleContainerSampleEntityOperations.
*/

@interface MSSampleContainerSampleEntityOperations : MSSampleContainerEntityOperations

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)twoParamsActionsFirstIsEntityTypeWithAnEntity:(MSSampleContainerSampleEntity *)anEntity booleanParams:(BOOL )booleanParams callback:(void (^)(int returnValue, MSOrcError *error))callback;
- (void)twoParamsActionsFirstIsEntityTypeRawWithAnEntity:(NSString *) anEntity booleanParams:(NSString *) booleanParams callback:(void(^)(NSString *returnValue, MSOrcError *error))callback;
- (void)twoParamsActionsFirstIsComplexTypeWithComplexType:(MSSampleContainerSampleComplexType *)complexType booleanParams:(BOOL )booleanParams callback:(void (^)(int returnValue, MSOrcError *error))callback;
- (void)twoParamsActionsFirstIsComplexTypeRawWithComplexType:(NSString *) complexType booleanParams:(NSString *) booleanParams callback:(void(^)(NSString *returnValue, MSOrcError *error))callback;
- (void)twoParamsActionsFirstIsCollectionEntityTypeWithCollectionType:(NSArray *)collectionType booleanParams:(BOOL )booleanParams callback:(void (^)(int returnValue, MSOrcError *error))callback;
- (void)twoParamsActionsFirstIsCollectionEntityTypeRawWithCollectionType:(NSString *) collectionType booleanParams:(NSString *) booleanParams callback:(void(^)(NSString *returnValue, MSOrcError *error))callback;
- (void)twoParamsActionsFirstIsCollectionComplexTypeWithCollectionType:(NSArray *)collectionType booleanParams:(BOOL )booleanParams callback:(void (^)(int returnValue, MSOrcError *error))callback;
- (void)twoParamsActionsFirstIsCollectionComplexTypeRawWithCollectionType:(NSString *) collectionType booleanParams:(NSString *) booleanParams callback:(void(^)(NSString *returnValue, MSOrcError *error))callback;

@end