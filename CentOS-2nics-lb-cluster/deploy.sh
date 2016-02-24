cp /etc/sysconfig/network-scripts/ifcfg-eth0 /etc/sysconfig/network-scripts/ifcfg-eth1
sed -i "s/^DEVICE=.*/DEVICE=eth1/I" "/etc/sysconfig/network-scripts/ifcfg-eth1" 
defaultgw=$(ip route show |sed -n "s/^default via //p")
declare -a gateway=(${defaultgw// / })
sed -i "\$aGATEWAY=${gateway[0]}" /etc/sysconfig/network
until service network restart
do
  echo "Try again"
  sleep 2
done

