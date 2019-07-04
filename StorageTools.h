//
//  StorageTools.h
//  KingWallet
//
//  Created by 楚涛 on 2018/11/28.
//  Copyright © 2018 Helios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StorageTools : NSObject

+(void)setMutbaArr:(NSMutableArray *)mutbArr forKey:(NSString *)defaultName;

+(NSMutableArray *)mutbaArrForKey:(NSString *)defaultName;


+ (void)setObject:(id)value forKey:(NSString *)defaultName;

+ (id)objectForKey:(NSString *)defaultName;


+ (void)setValue:(id)value forKey:(NSString *)defaultName;

+ (id)valueForKey:(NSString *)defaultName;


+(void)removeObjectForKey:(NSString*)key;

+(void)clearAll;

@end
