#!/bin/bash
if [ -z "$REDIS_HOST" ]; then
    HOSTSTR=''
else
    HOSTSTR=" -h $REDIS_HOST "
fi

if [ -z "$REDIS_PASSWORD" ]; then
    AUTHSTR=''
else
    AUTHSTR=" -a $REDIS_PASSWORD "
fi

for section in memory cpu stats replication clients; do
    redis-cli -p $REDIS_PORT $AUTHSTR $HOSTSTR info $section | grep -v ^# | sed "s/^/redis.port.$REDIS_PORT.$section./"
done

redis-cli -p $REDIS_PORT $AUTHSTR $HOSTSTR info stats | grep ^total_ | sed "s/^total_/_counter.redis.port.$REDIS_PORT.rate./"
