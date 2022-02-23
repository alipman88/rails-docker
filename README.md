## Dockerized Rails dev environment

_A Docker-based alternative to [github.com/rails/rails-dev-box](https://github.com/rails/rails-dev-box)._

### Setup

**Clone repos and build containers**

_Apple M1 users: uncomment the `platform: linux/x86_64` line in the mysql section of `docker-compose.yml`_

```bash
git clone git@github.com:alipman88/rails-docker.git
cd rails-docker
git clone git@github.com:rails/rails.git
docker compose up
```

**Open a new terminal tab and connect to the rails container**

```bash
docker compose exec rails bash
```
