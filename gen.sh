#!/bin/sh
if [ ! -d "./generated" ];then
mkdir generated
fi

echo "开始生成pb文件"
for pbfile in proto/*.proto
do
    protoc --go_out=generated/ --proto_path=proto $pbfile
done
echo "生成pb文件成功"
