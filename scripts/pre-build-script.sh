#!/bin/sh

log_file=/root/log_file.log
touch $log_file
echo "conditional check before dvipng...." >> $log_file
`sudo apt-get update; sudo apt-get install -y make m4 build-essential gcc gfortran libssl-dev python-software-properties expect expect-dev ipython; sudo -E apt-add-repository -y ppa:aims/sagemath; sudo apt-get update; sudo apt-get install -y dvipng`

ret_code=$?
echo "ret code from dvipng $ret_code" >> $log_file

if [ $ret_code -ne 0 ]; then
    echo "starting dpkg after dvipng..." >> $log_file
    `dpkg --configure -a;`
     echo "dpkg --cinfgure -a" >> $log_file
    `apt-get install -f; apt-get install -y sagemath-upstream-binary --force-yes`
    exit $?
else 
    echo "else check after dvipng...." >> $log_file
fi
echo "end step.." >> $log_file
exit 0
