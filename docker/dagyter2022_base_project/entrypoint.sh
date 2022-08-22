#!/bin/sh
pip3 install pysftp
export PYTHONPATH="$PYTHONPATH:/workspace/commons:/workspace/IDEAT:/workspace/OPERA:/workspace/TETU:/workspace/IAD"

jupyter lab --port=8888 --no-browser --ip=0.0.0.0 --allow-root &

# change password root
echo 'root:$1$Y65ZRxHS$qOg3BVcyumiRcEK6OrZl51'|chpasswd -e
service ssh restart

cd /opt/dagster/conf
dagster-daemon run &
dagit -h "0.0.0.0" -p "3000" -w "/opt/dagster/conf/workspace.yaml" 



