# docker-sinusbot

[![](https://images.microbadger.com/badges/image/galexrt/sinusbot.svg)](https://microbadger.com/images/galexrt/sinusbot "Get your own image badge on microbadger.com")

Debian Jessie with Sinusbot by Michael Friese.
TeamSpeak 3 SinusBot Homepage: https://frie.se/ts3bot/.

## Summary
* Debian Jessie with the latest version of Sinusbot
* You can inject your data into the container
  * /data
  
## Usage
### Permissions
The default UID of the user which is used in the container is 3000.
So if you mount a directory from your host you have to set the permission to the user with the UID of 3000.
```
useradd -u 3000 sinusbot
chown -R sinusbot:sinusbot /data/sinusbot
```
Or if you dont want to create an user just use
```
chown -R 3000:3000 /data/sinusbot
```

### Mount host directory
```
docker run --name sinusbot -d -v /data/sinusbot:/sinusbot/data -p 8087:8087 galexrt/sinusbot:latest
```

### SELinux
If your host uses SELinux it may be necessary to use the **:z** option:
```
docker run --name sinusbot -d -v /data/sinusbot:/sinusbot/data:z -p 8087:8087 galexrt/sinusbot:latest
```

### Run container
Running this container is very simple:
```
./run.sh
```

### Stop container
Stopping this container is also simple:
```
./stop.sh
```
