#!/bin/bash

mkdir server-config

cp -r game server-config
cp post.sh server-config
cp pre.sh server-config

tar -czf server-config.tar.gz server-config

rm -rf server-config