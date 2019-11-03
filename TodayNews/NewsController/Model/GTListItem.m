//
//  GTListItem.m
//  TodayNews
//
//  Created by Ray on 2019/11/2.
//  Copyright © 2019 cynine. All rights reserved.
//

#import "GTListItem.h"

@implementation GTListItem

- (void)configWithDictionary:(NSDictionary *)dictionary {
#warning 类型是否匹配
    self.category = [dictionary objectForKey:@"category"];
    self.picUrl = [dictionary objectForKey:@"thumbnail_pic_s"];
    self.uniqueKey = [dictionary objectForKey:@"uniquekey"];
    self.title = [dictionary objectForKey:@"title"];
    self.authorName = [dictionary objectForKey:@"author_name"];
    self.date = [dictionary objectForKey:@"date"];
    self.atricleUrl = [dictionary objectForKey:@"url"];
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super init];
    if (self) {
        self.category = [coder decodeObjectForKey:@"category"];
        self.picUrl = [coder decodeObjectForKey:@"picUrl"];
        self.uniqueKey = [coder decodeObjectForKey:@"uniqueKey"];
        self.title = [coder decodeObjectForKey:@"title"];
        self.authorName = [coder decodeObjectForKey:@"authorName"];
        self.date = [coder decodeObjectForKey:@"date"];
        self.atricleUrl = [coder decodeObjectForKey:@"atricleUrl"];
    }
    return self;
}
 
-(void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.category forKey:@"category"];
    [coder encodeObject:self.picUrl forKey:@"picUrl"];
    [coder encodeObject:self.uniqueKey forKey:@"uniqueKey"];
    [coder encodeObject:self.title forKey:@"title"];
    [coder encodeObject:self.authorName forKey:@"authorName"];
    [coder encodeObject:self.date forKey:@"date"];
    [coder encodeObject:self.atricleUrl forKey:@"atricleUrl"];
}

+ (BOOL)supportsSecureCoding {
    return YES;
}

@end
