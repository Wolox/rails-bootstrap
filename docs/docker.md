## Docker

If you don't want to install everything in your computer you can opt to run your application using [Docker](https://www.docker.com/what-docker)

`OSX:` Install [boot2docker](http://boot2docker.io/) and run:

```bash
  > $(boot2docker shellinit)
  > boot2docker init
  > boot2docker up
```

Install [Docker Compose](https://docs.docker.com/compose/install/) and then run:

  ```bash
    > git clone https://github.com/Wolox/rails-bootstrap.git
    > docker-compose up
  ```

`OSX:` Get the IP by running `boot2docker ip` and enter port `3000` in the browser. To connect to the database read: https://coderwall.com/p/qsr3yq/postgresql-with-docker-on-os-x

When the server starts, run the following command in a different console to setup the database:

  ```bash
    > docker-compose run web rake db:create db:seed
  ```

To stop the server run the following command in a different console:

  ```bash
    > docker-compose stop
  ```
`OSX`: Just press `CTRL+C`

To see the running process, run the following command in a different console:

  ```bash
    > docker-compose ps
  ```

New dependencies should be added to [Dockerfile](Dockerfile) and [docker-compose.yml](docker-compose.yml) and then run:

  ```bash
    > docker-compose build
  ```
