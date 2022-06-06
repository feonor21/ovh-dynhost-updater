# ovh-dynhost-updater

jsut for update dynhost adress by an cron job in docker

### for check logs check logs

```Bash
docker compose exec ovh-dynhost-updater cat /usr/src/app/dynhost.log
```

### docker compose integration

```Docker
ovh-dynhost-updater:
    container_name: ovh-dynhost-updater
    build: ./ovh-dynhost-updater
    restart: always
    environment:
    DYNHOST_DOMAIN_NAME: example.maedhros.ovh
    DYNHOST_LOGIN: login_dynhost_of_ovh
    DYNHOST_PASSWORD: your_beautiful_password
```
