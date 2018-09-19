

#shadowsocks


##使用PRIVOXY上网设置SHADOWSOCKS代理



```
# 启动shadowsocks
nohup sslocal -c /etc/shadowsocks.json /dev/null 2>&1 &                    
privoxy --user privoxy /etc/privoxy/config

```

export http_proxy=http://127.0.0.1:8118
export https_proxy=http://127.0.0.1:8118
export ftp_proxy=http://127.0.0.1:8118


export http_proxy=http://192.168.1.84:8118
export https_proxy=http://192.168.1.84:8118


http://www.junww.com/server/2017/0302/221.html

curl ip.gs

nohup sslocal -c /etc/shadowsocks.json /dev/null 2>&1 &
privoxy --user privoxy /usr/local/etc/privoxy/config


#安装

yum install python-pip
pip install shadowsocks

## vim /etc/shadowsocks.json
{
 "server": "xxxx",
 "server_port": 12443,
 "password": "xxx",
 "method": "aes-256-cfb",
 "local_address":"127.0.0.1",
 "local_port":1080
}


安装Privoxy
下载地址：http://www.privoxy.org/sf-download-mirror/Sources/3.0.26%20%28stable%29/privoxy-3.0.26-stable-src.tar.gz
上述安好了shadowsocks，但它是socks5代理，我门在shell里执行的命令，发起的网络请求现在还不支持socks5代理，只支持http／https代理。为了我门需要安装privoxy代理，它能把电脑上所有http请求转发给shadowsocks。 
访问官网http://www.privoxy.org/获得Privoxy的最新源码:
privoxy-3.0.26-stable-src.tar.gz,执行tar -zxvf privoxy-3.0.26-stable-src.tar.gz解压，然后cd privoxy-3.0.26-stable进去。 
安装前需要执行useradd privoxy创建一个用户privoxy，然后依次执行如下三条命令:
autoheader && autoconf
./configure
make && make install
查看vim /usr/local/etc/privoxy/config文件，先搜索关键字:listen-address找到listen-address 127.0.0.1:8118这一句，保证这一句没有注释，8118就是将来http代理要输入的端口。然后搜索forward-socks5t,将forward-socks5t / 127.0.0.1:1080 . 此句的注释去掉（注意后面的点不要删了哦）. 
执行如下命令启动privoxy，参考官网,不同的平台对应不同的方法: 
privoxy --user privoxy /usr/local/etc/privoxy/config 也可以用系统命令：service privoxy start


