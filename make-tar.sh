#!/bin/bash

mkdir server-config

cp -r tmp-download server-config
cp post.sh server-config
cp pre.sh server-config

tar -czvf server-config.tar.gz -C server-config .

rm -rf server-config