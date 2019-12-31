#!/bin/bash
## 创建服务器 东京地区 1024M 5美元
RAM="512"
PRICE="3.50"
REGION="New Jersey"
OSID=`vultr-cli os list|grep 'CentOS 7'|awk '{print $1}'`
PLANID="200"
echo $OSID
echo $REGION
#PLANID=`vultr-cli plans list|grep "$RAM"|awk '{if($10=="'$RAM'" && $14=="'$PRICE'"){ print $1 }}'`
#RegionID=`vultr-cli regions list|awk '{if($2=="'New Jersey'"){ print $1}}'`
RegionID=1
echo $RegionID
SSHKEY_ID=`vultr-cli ssh-key list|awk '{if($4=="ssh1"){ print $1}}'`

vultr-cli server create \
    --region    $RegionID   \
    --plan      $PLANID     \
    --os        $OSID       \
    --ssh-keys  $SSHKEY_ID