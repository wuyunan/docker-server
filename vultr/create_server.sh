## 创建服务器 东京地区 1024M 5美元
RAM=1024
PRICE="5.00"
OSID=`vultr-cli os list|grep 'CentOS 7'|awk '{print $1}'`
PLANID=`vultr-cli plans list|grep "$RAM"|awk '{if($10=="'$RAM'" && $14=="'$PRICE'"){ print $1 }}'`
RegionID=`vultr-cli regions list|awk '{if($2=="Tokyo"){ print $1}}'`

SSHKEY_ID=`vultr-cli ssh-key list|awk '{if($4=="ssh1"){ print $1}}'`

vultr-cli server create \
--region    $RegionID   \
--plan      $PLANID     \
--os        $OSID       \
--ssh-keys  $SSHKEY_ID