

local blocks_ips = {["127.0.0.1"] = true}
local ip = "127.0.0.1"

if true == blocks_ips[ip] then
  ngx.exit(ngx.HTTP_FORBIDDEN)
end