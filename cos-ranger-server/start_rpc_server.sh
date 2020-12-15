#!/bin/sh

export LANG=en_US.utf8

cur_dir=$(cd `dirname $0`;pwd)
cd ${cur_dir}

# hadoop配置目录, 该目录下有core-site.xml等配置文件
hadoop_conf_path="/usr/local/service/hadoop/etc/hadoop"

# class path地址
cp_path=${cur_dir}:${cur_dir}/conf:${hadoop_conf_path}:${cur_dir}/lib/*

# 指定cos-ranger.xml, ranger-cos-audit.xml等的配置项所在的目录
export qcloud_object_storage_ranger_service_config_dir=${cur_dir}/conf


# java.libray.path指定hadoop本地库的路径
java -Dfile.encoding=UTF-8 -Djava.library.path=/usr/local/service/hadoop/lib/native $@ -cp "$cp_path" org.apache.hadoop.fs.cosn.ranger.server.Service