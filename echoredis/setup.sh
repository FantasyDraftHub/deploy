curdir=$(dirname $0)
sh setup_redis.sh
sh $curdir/../echoapi/setup.sh
