 #!/bin/bash
 docker run -d --name v2ray \
  -v /etc/v2ray:/etc/v2ray \
  -p 8888:8888 \
  v2ray/official  v2ray \
  -config=/etc/v2ray/config.json
