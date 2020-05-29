ADD file:e69d441d729412d24675dcd33e04580885df99981cec43de8c9b24015313ff8e in / 

CMD ["/bin/sh"]
/bin/sh -c apk add --update tzdata
ENV TZ=Asia/Shanghai

/bin/sh -c wget --no-check-certificate https://raw.githubusercontent.com/iiiiiii1/CTList/master/exec/amd64/linux/CTList     && mkdir /ctlist     && cp CTList /ctlist/CTList     && chmod +x /ctlist/CTList     && rm -rf CTList     && mkdir /conf     && rm -rf /var/cache/apk/*

VOLUME [/conf]
WORKDIR /ctlist
ENTRYPOINT ["./CTList" "-a" "b9eb2fee7758ebbab0354ebe88190e36" "-c" "/conf/config.json" "-t" "/conf/index.html" "-bind" "0.0.0.0"]
