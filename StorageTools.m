//
//  StorageTools.m
//  KingWallet
//
//  Created by 楚涛 on 2018/11/28.
//  Copyright © 2018 Helios. All rights reserved.
//

#import "StorageTools.h"

@implementation StorageTools

+(void)setMutbaArr:(NSMutableArray *)mutbArr forKey:(NSString *)defaultName{
    
    NSMutableArray *mutableCopyArr = [mutbArr mutableCopy];

    [[NSUserDefaults standardUserDefaults] setObject:mutableCopyArr forKey:defaultName];

    [StorageTools synchronize];
}

+(NSMutableArray *)mutbaArrForKey:(NSString *)defaultName{
    
    NSMutableArray *gettedArr = [[NSUserDefaults standardUserDefaults] mutableArrayValueForKey:defaultName];

    if(gettedArr.count == 0){
        
        NSMutableArray *voidArr = [[NSMutableArray alloc]init];
        return voidArr;
    }else{
        
        NSMutableArray *savedArr = [gettedArr mutableCopy];
        return savedArr;
    }
}

+ (void)setObject:(id)value forKey:(NSString *)defaultName{
    
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:defaultName];
    [StorageTools synchronize];
}

+ (id)objectForKey:(NSString *)defaultName{
    
    return [[NSUserDefaults standardUserDefaults] objectForKey:defaultName];
}

+(void)setValue:(id)value forKey:(NSString *)defaultName{
    
    [[NSUserDefaults standardUserDefaults] setValue:value forKey:defaultName];
    [StorageTools synchronize];
}

+(id)valueForKey:(NSString *)defaultName{
    
    return [[NSUserDefaults standardUserDefaults] objectForKey:defaultName];
}

+(void)removeObjectForKey:(NSString *)key{
    
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
    [StorageTools synchronize];
}

+(void)clearAll {
    NSUserDefaults *userDefatluts = [NSUserDefaults standardUserDefaults];
    NSDictionary *dictionary = userDefatluts.dictionaryRepresentation;;
    for(NSString* key in [dictionary allKeys]){
        if ([key isEqualToString:@"isFirst"]) {
            continue;
        }
        [userDefatluts removeObjectForKey:key];
        [userDefatluts synchronize];
    }
}

//同步
+(void)synchronize{
    
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
