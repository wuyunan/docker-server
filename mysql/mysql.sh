#!/bin/bash
docker run \
--name first-mysql \
-p 3306:3306 \
-e MYSQL\_ROOT\_PASSWORD=Password01! \
-e MYSQL\_DATABASE=qt \
-d mysql \
--default-authentication-plugin=mysql_native_password \
--max-allowed-packet=32505856
