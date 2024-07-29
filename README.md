# cs2-docker-customize


This is a customization tar archive for this CS2 server docker image https://github.com/joedwards32/CS2 

It Installs the required plugins and configurations for FFA Gungame.

- Metamod
- CounterStrikeSharp
- cs2-gungame: https://github.com/ssypchenko/cs2-gungame
- cs2-rockthevote: https://github.com/abnerfs/cs2-rockthevote (slightly modified version)

# installation

Just add the link to release tar.gz to your docker compose file.

```
CS2_CFG_URL="https://github.com/tuomO42/cs2-docker-customize/releases/download/1.0/server-config.tar.gz"
```

# usage

after initial building of the docker container configurations etc. can be changed normalli in persistent storrage.

backups of all the files installed by this thing will be stored in persistent storages root in folder "defaults-backup". 

Removing the backup folder will perform reinstall of this thing. 
