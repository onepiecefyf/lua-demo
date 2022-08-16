### lua学习笔记

### 一、lua、luarocks、luaJIT安装
只介绍源码安装（适用于mac、linux、windows）。  
安装版本：  
lua：lua-5.3.4.tar.gz  
luarocks：luarocks-3.9.1.tar.gz   
luaJIT：LuaJIT-2.0.5.tar.gz 

```shell
Mac安装非常简单
brew install lua
brew install luarocks
brew install LuaJIT
```


#### 1、源码下载地址
lua: http://www.lua.org/ftp/  
luarocks:  https://luarocks.github.io/luarocks/releases/  
luaJIT: https://luajit.org/download.html

#### 2、安装lua
```shell
tar -xzvf lua-5.3.4.tar.gz
cd lua-5.3.4
make 
make install
```

#### 3、安装luarocks
```shell
tar -xzvf luarocks-3.9.1.tar.gz
cd luarocks-3.9.1
./configure --prefix=/usr/local/luarocks --with-lua-include=/usr/local/lua/src
make
make install
make bootstrap
```

#### 4、安装luaJIT
```shell
tar -xzvf LuaJIT-2.0.5.tar.gz
cd LuaJIT-2.0.5
make
make install 
```
export MACOSX_DEPLOYMENT_TARGET=12.0.1

### 二、luarocks安装模块

#### 1、数据库驱动
```shell
luarocks install luasql-sqlite3
luarocks install luasql-postgres
luarocks install luasql-mysql
luarocks install luasql-sqlite
luarocks install luasql-odbc
```

#### 2、redis驱动
```shell
luarocks install redis-lua
```





