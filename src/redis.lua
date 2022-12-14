local function close_redis( red )
    if not red then
      return
    end
    local ok, err = red:close()
    if not ok then
      ngx.say("close redis error:", err)
    end
  end
  
  local redis = require("resty.redis")
  
  -- 创建实例
  local red = redis:new()
  -- 设置超时(毫秒)
  red:set_timeout(2000)
  -- 建立连接
  local ip = "192.168.16.4"
  local port = 6379
  local ok, err = red:connect(ip, port)
  if not ok then
    return
  end

  --- 设置redis密码 没设置 直接略过
  local res, err = red:auth("wsy@123456")
  if not res then
    ngx.say("connect to redis error : ", err)
    return
  end


  -- 调用API进行处理
  res, err = red:set("msg", "hello world")
  if not res then
    ngx.say("set msg error : ", err)
    return close_redis(red)
  end
  
  -- 调用API获取数据
  local resp, err = red:get("msg")
  if not resp then
    ngx.say("get msg erro:", err)
    return close_redis(red)
  end
  -- 得到数据为空处理
  if resp == ngx.null then
    resp = '' -- 比如默认值
  end
  ngx.say("msg:", resp)

close_redis(red)
  