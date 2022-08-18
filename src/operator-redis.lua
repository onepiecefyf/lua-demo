
local redis = require "redis"

local rds, err = redis.open_redis()
if not rds then
    ngx.log(ngx.ERR, "[gw_status] [m_redis_api:open_redis()] redis init failed. ", err)
    ngx.say('{"status":500, "message":"[product] redis init failed"}')
    ngx.exit(ngx.HTTP_OK)
    return
end
ngx.log(ngx.INFO, "redis init successful")