//
//  Constants.h
//  PhotoUploading
//
//  Created by Anthony Forsythe on 8/5/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Constants;

@interface Constants : NSObject

+(NSString*)getLabelDateTaken;
+(NSString*)getLabelDateUploaded;
+(NSString*)getLabelTakenBy;
+(NSString*)getLabelTitle;
+(NSString*)getLabelUploadedBy;
+(NSString*)getLabelConfidence;

+(NSString*)getKeyDateTaken;
+(NSString*)getKeyDateUploaded;
+(NSString*)getKeyPhotographerName;
+(NSString*)getKeyTitle;



@end