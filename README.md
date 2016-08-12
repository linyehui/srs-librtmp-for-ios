## 需求
编译iOS版本的SRS librtmp

## 编译步骤
1、使用SRS的configure 生成单独的librtmp工程
```
./configure --export-librtmp-single=<path>
```

2、创建iOS空工程，并复制srs-librtmp src目录下的文件到新工程的vendor/srs-librtmp目录下

3、从SRS的srs目录中把srs_auto_headers.hpp文件也复制到新工程的vendor/srs-librtmp目录下

4、配置Header Search Paths，把librtmp的代码目录加入配置
```
./srs-librtmp/vendor/srs-librtmp
./srs-librtmp/vendor/srs-librtmp/core
./srs-librtmp/vendor/srs-librtmp/kernel
./srs-librtmp/vendor/srs-librtmp/libs
./srs-librtmp/vendor/srs-librtmp/protocol
```

5、C++ Language Dialect 配置为 GNU++98

6、C++ Standard Library 配置为 libstdc++(GNU C++ standard library)

7、在main.m中添加测试代码

```
#include "srs_librtmp.hpp"

srs_rtmp_t rtmp;

printf("Example for srs-librtmp\n");
printf("SRS(ossrs) client librtmp library.\n");
printf("version: %d.%d.%d\n", srs_version_major(), srs_version_minor(), srs_version_revision());

rtmp = srs_rtmp_create("rtmp://ossrs.net/live/livestream");
srs_human_trace("create rtmp success");
srs_rtmp_destroy(rtmp);
```

8、编译正常，完成。

## 参考文档
[SRS提供的librtmp](https://github.com/ossrs/srs/wiki/v2_CN_SrsLibrtmp)
