#!/bin/bash
cd `dirname $0`

pkg_file=target/ROOT.war
if [ ! -s ${pkg_file} ]; then
    echo "deploy failed : package not exist"
    exit 1
fi

serverpath=/home/roch/heb_apps/weixin_public/tomcat
day=`date +%Y%m%d%H%M`

if [ ! -d ${serverpath}/bak ]; then
  mkdir ${serverpath}/bak
fi

echo "cp ${serverpath}/webapps/ROOT.war ${serverpath}/bak/ROOT_${day}.war"
cp ${serverpath}/webapps/ROOT.war ${serverpath}/bak/ROOT_${day}.war

pid=`ps aux | grep  ${serverpath} |grep -v grep | awk '{print $2}'`
kill -9 $pid

#cp war to tomcat
rm -rf ${serverpath}/work/*
rm -rf ${serverpath}/webapps/ROOT
cp ${pkg_file} ${serverpath}/webapps/ROOT.war

${serverpath}/bin/startup.sh
