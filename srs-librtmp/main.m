//
//  main.m
//  srs-librtmp
//
//  Created by linyehui on 2016/08/12.
//  Copyright © 2016年 linyehui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#include "srs_librtmp.hpp"

int main(int argc, char * argv[]) {
	srs_rtmp_t rtmp;

	printf("Example for srs-librtmp\n");
	printf("SRS(ossrs) client librtmp library.\n");
	printf("version: %d.%d.%d\n", srs_version_major(), srs_version_minor(), srs_version_revision());

	rtmp = srs_rtmp_create("rtmp://ossrs.net/live/livestream");
	srs_human_trace("create rtmp success");
	srs_rtmp_destroy(rtmp);

	@autoreleasepool {
	    return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
	}
}
