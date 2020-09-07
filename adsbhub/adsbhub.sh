#!/bin/bash
# ------------------------------------------------------------------
# www.adsbhub.org
# version: 1.04
# ------------------------------------------------------------------

# Note: get your key from adsbhub.org/setting.php - click on your station name
ckey=''
cmd="nc -w 60 dump1090 30002 | nc -w 60 data.adsbhub.org 5001"
#cmd="nc -w 60 -q 10 localhost 30002 | nc -w 60 -q 10 94.130.23.233 5001"
myip="0.0.0.0"
cmin=0

while true; do

    # Check connection and reconnect
    check=`netstat -a | grep "adsbhub[.]org[.]5001 \|adsbhub[.]org:5001 \|data[.]adsbhub[.]org[.]5001 \|data[.]adsbhub[.]org:5001 "`
    #check=`netstat -an | grep "94[.]130[.]23[.]233[.]5001 \|94[.]130[.]23[.]233:5001 "`

    if [ ${#check} -ge 10 ]
    then
      result="connected"
    else
      result="not connected"
      eval "${cmd}" &
    fi

    echo $result


    # Update IP if change
    if [ -n "$ckey" ]
    then
      cmin=$((cmin-1))
      if [ $cmin -le 0 ]
      then
        cmin=5
        currentip=`wget -O /dev/null --no-check-certificate -qO- https://data.adsbhub.org/getmyip.php`

        if [ ${#currentip} -ge 7 ] && [ "$currentip" != "$myip" ]
        then
          skey=`wget -O /dev/null --no-check-certificate -qO- https://www.adsbhub.org/key.php`
          if [ ${#skey} -ge 33 ]
          then
            ss=${skey: -1}
            skey=${skey::-1}
            md5=`echo -n $ckey$skey | md5sum | awk '{print $1}'`

            result=`wget -O /dev/null --no-check-certificate -qO- "https://www.adsbhub.org/updateip.php?sessid=$md5$ss&myip=$currentip"`

            if [ "$result" == "$md5$ss" ]
            then
              myip=$currentip
              #echo $result
            fi
          fi
        fi
      fi
    fi

    sleep 60

    done
