# WordPress with Docker

This makes local WordPress development easy by spinning up a website using WordPress, MySQL and PhpMyAdmin.

### Getting started

---

1. [Install docker in your system](https://docs.docker.com/get-docker/).
2. Pull this repository.
3. Create `.env` from `.env-sample`.
4. Set the required values in `.env`. Whatever you set in this file will be used to install `mysql` and setting up database for your website.
5. Execute `docker-compose up -d` from a terminal inside the directory.
6. Open up your browser and hit http://localhost:8000.
7. Proceed and complete installation.
8. Your website is ready to be developed to its next awesome level.

WordPress and phpMyAdmin are set to be exposed at port `8000` and `8080` respectively in your local machine. You may change this if these ports are not free in your system.

If you are doing this for the first time, then it will take some time to pull the images from Docker Hub. Everything will be done in seconds when you will have the images for WordPress, MySQl and phpMyAdmin in your local machine.

## Key Commands

---

`docker-compose down` to stop the container.  
`docker-compose build` to rebuild the container.

See this for further reference on `docker-compose`, https://docs.docker.com/compose/reference/

## Acknowledgement

---

This is not production ready, I prefer this one for local development only.

My [`docker-compose.yml`](https://github.com/IamLizu/wp-docker/blob/master/docker-compose.yml) is an improved version of [Brad's `docker-compose.yml` for WordPress](https://gist.github.com/bradtraversy/faa8de544c62eef3f31de406982f1d42). (Kudos to [Brad Traversy](https://github.com/bradtraversy/) for his contributions to the community.)

As of creating this repo, if you use Brad's version of the file, you may face database connection issue if your database name is anything else that `wordpress`.

Keep learning, and create your own awesome compose file. Don't forget to share it [here](https://github.com/IamLizu/wp-docker/discussions/1). Let's talk about it!
