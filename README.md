1
#check logs => docker compose exec ovh-dynhost-updater cat /usr/src/app/dynhost.log
ovh-dynhost-updater:
container_name: ovh-dynhost-updater
build: ./ovh-dynhost-updater
restart: always
environment:
DYNHOST_DOMAIN_NAME: example.maedhros.ovh
DYNHOST_LOGIN: login_dynhist_of_ovh
DYNHOST_PASSWORD: your_beautiful_password
