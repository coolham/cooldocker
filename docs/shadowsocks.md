

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


